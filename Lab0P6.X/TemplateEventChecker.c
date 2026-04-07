    /*
 * File:   TemplateEventChecker.c
 * Author: Gabriel Hugh Elkaim
 *
 * Template file to set up typical EventCheckers for the  Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the
 * names will have to be changed to match your code.
 *
 * This EventCheckers file will work with both FSM's and HSM's.
 *
 * Remember that EventCheckers should only return TRUE when an event has occured,
 * and that the event is a TRANSITION between two detectable differences. They
 * should also be atomic and run as fast as possible for good results.
 *
 * This file includes a test harness that will run the event detectors listed in the
 * ES_Configure file in the project, and will conditionally compile main if the macro
 * EVENTCHECKER_TEST is defined (either in the project or in the file). This will allow
 * you to check you event detectors in their own project, and then leave them untouched
 * for your project unless you need to alter their post functions.
 *
 * Created on September 27, 2013, 8:37 AM
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "TemplateEventChecker.h"
#include "ES_Events.h"
#include "serial.h"
#include "AD.h"
#include "roach.h"
#include <stdio.h>
#include "TemplateService.h"



/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
#define BATTERY_DISCONNECT_THRESHOLD 175

#define LIGHT_THRESHOLD 400
#define DARK_THRESHOLD 600

//#define BUMPER_TICK_MS   10      go back to 16 thjen 0xFFFF  

#define DEBOUNCE_MASK 0xFF
#define DEBOUNCE_MASK_FR 0xFFFFFFFF
/*******************************************************************************
 * EVENTCHECKER_TEST SPECIFIC CODE                                                             *
 ******************************************************************************/

//0 = dark
//1 = light 
static int lastLightState = 0;
static int lastBumperState = 0;

static uint8_t hist_FL = 0;
static uint32_t hist_FR = 0;
static uint8_t hist_BL = 0;
static uint8_t hist_BR = 0;
static uint8_t lastDebounce = 0;
//#define EVENTCHECKER_TEST
#ifdef EVENTCHECKER_TEST
#include <stdio.h>
#define SaveEvent(x) do {eventName=__func__; storedEvent=x;} while (0)



static const char *eventName;
static ES_Event storedEvent;
#endif

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this EventChecker. They should be functions
   relevant to the behavior of this particular event checker */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                    *
 ******************************************************************************/

/* Any private module level variable that you might need for keeping track of
   events would be placed here. Private variables should be STATIC so that they
   are limited in scope to this module. */

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function TemplateCheckBattery(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function is a prototype event checker that checks the battery voltage
 *        against a fixed threshold (#defined in the .c file). Note that you need to
 *        keep track of previous history, and that the actual battery voltage is checked
 *        only once at the beginning of the function. The function will post an event
 *        of either BATTERY_CONNECTED or BATTERY_DISCONNECTED if the power switch is turned
 *        on or off with the USB cord plugged into the Uno32. Returns TRUE if there was an 
 *        event, FALSE otherwise.
 * @note Use this code as a template for your other event checkers, and modify as necessary.
 * @author Gabriel H Elkaim, 2013.09.27 09:18
 * @modified Gabriel H Elkaim/Max Dunne, 2016.09.12 20:08 */

uint8_t LightChecker(void){
    int currentLight = Roach_LightLevel();
    //if under threshold then dark 
    
    

    if (lastLightState == 0 && currentLight < LIGHT_THRESHOLD) {
        // was DARK, now bright enough
        ES_Event ThisEvent;
        ThisEvent.EventType = INTO_LIGHT;
        ThisEvent.EventParam = (uint16_t)currentLight;
        PostTemplateService(ThisEvent);
        printf("INTO_LIGHT val=%d\r\n", currentLight);
        lastLightState = 1;
        return TRUE;
    }
    if (lastLightState == 1 && currentLight > DARK_THRESHOLD) {
        // was LIGHT, now dark enough
        ES_Event ThisEvent;
        ThisEvent.EventType = INTO_DARK;
        ThisEvent.EventParam = (uint16_t)currentLight;
        PostTemplateService(ThisEvent);
        printf("INTO_DARK val=%d\r\n", currentLight);
        lastLightState = 0;
        return TRUE;
    }
    return FALSE;
}


uint8_t CheckBumperDebounce(void){
    hist_FL = (hist_FL << 1) | (Roach_ReadFrontLeftBumper() == BUMPER_TRIPPED ? 1: 0);
    hist_FR = (hist_FR << 1) | (Roach_ReadFrontRightBumper() == BUMPER_TRIPPED ? 1: 0);
    hist_BL = (hist_BL << 1) | (Roach_ReadRearLeftBumper() == BUMPER_TRIPPED ? 1: 0);
    hist_BR = (hist_BR << 1) | (Roach_ReadRearRightBumper() == BUMPER_TRIPPED ? 1: 0);
    uint8_t debounceState = 0;
    if(hist_FL == DEBOUNCE_MASK) debounceState |= 0x08;
    if(hist_FR == DEBOUNCE_MASK_FR) debounceState |= 0x04;

    if(hist_BL == DEBOUNCE_MASK) debounceState |= 0x02;
    if(hist_BR == DEBOUNCE_MASK) debounceState |= 0x01;
    
    if(debounceState != lastDebounce){
        ES_Event ThisEvent;
        ThisEvent.EventType = (debounceState != 0) ? BUMPER_PRESSED: BUMPER_RELEASED;
        ThisEvent.EventParam = (uint16_t)debounceState;
        PostTemplateService(ThisEvent);
        printf("BumperEvent: %s val = 0x%X\r\n", (ThisEvent.EventType == BUMPER_PRESSED) 
        ? "BUMPER_PRESSED" : "BUMPER_RELEASED", debounceState);
        lastDebounce = debounceState;
        return TRUE;
    }
    return FALSE;
    


}
/*
uint8_t BumperChecker(void){
    int currentbumper = Roach_ReadBumpers();
    if(currentbumper !=  lastBumperState){
        ES_Event ThisEvent;
        ThisEvent.EventType = (currentbumper != 0) ? BUMPER_PRESSED: BUMPER_RELEASED;
        ThisEvent.EventParam = (uint16_t)currentbumper;
        PostTemplateService(ThisEvent);
        printf("BumperEvent: %s val = 0x%X\r\n", (ThisEvent.EventType == BUMPER_PRESSED) ? "BUMPER_PRESSED": "BUMPER_RELEASED", currentbumper);
        lastBumperState = currentbumper;
        return TRUE;
    }
    return FALSE;
 
    
}
 * */
uint8_t TemplateCheckBattery(void) {
    static ES_EventTyp_t lastEvent = BATTERY_DISCONNECTED;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    uint16_t batVoltage = AD_ReadADPin(BAT_VOLTAGE); // read the battery voltage

    if (batVoltage > BATTERY_DISCONNECT_THRESHOLD) { // is battery connected?
        curEvent = BATTERY_CONNECTED;
    } else {
        curEvent = BATTERY_DISCONNECTED;
    }
    if (curEvent != lastEvent) { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = batVoltage;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostTemplateService(thisEvent);
#else
        SaveEvent(thisEvent);
#endif   
    }
    return (returnVal);
}

/* 
 * The Test Harness for the event checkers is conditionally compiled using
 * the EVENTCHECKER_TEST macro (defined either in the file or at the project level).
 * No other main() can exist within the project.
 * 
 * It requires a valid ES_Configure.h file in the project with the correct events in 
 * the enum, and the correct list of event checkers in the EVENT_CHECK_LIST.
 * 
 * The test harness will run each of your event detectors identically to the way the
 * ES_Framework will call them, and if an event is detected it will print out the function
 * name, event, and event parameter. Use this to test your event checking code and
 * ensure that it is fully functional.
 * 
 * If you are locking up the output, most likely you are generating too many events.
 * Remember that events are detectable changes, not a state in itself.
 * 
 * Once you have fully tested your event checking code, you can leave it in its own
 * project and point to it from your other projects. If the EVENTCHECKER_TEST marco is
 * defined in the project, no changes are necessary for your event checkers to work
 * with your other projects.
 */
#ifdef EVENTCHECKER_TEST
#include <stdio.h>
static uint8_t(*EventList[])(void) = {EVENT_CHECK_LIST};

void PrintEvent(void);

void main(void) {
    BOARD_Init();
    /* user initialization code goes here */

    // Do not alter anything below this line
    int i;

    printf("\r\nEvent checking test harness for %s", __FILE__);

    while (1) {
        if (IsTransmitEmpty()) {
            for (i = 0; i< sizeof (EventList) >> 2; i++) {
                if (EventList[i]() == TRUE) {
                    PrintEvent();
                    break;
                }

            }
        }
    }
}

void PrintEvent(void) {
    printf("\r\nFunc: %s\tEvent: %s\tParam: 0x%X", eventName,
            EventNames[storedEvent.EventType], storedEvent.EventParam);
}
#endif