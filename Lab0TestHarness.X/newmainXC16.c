/*
 * File:   newmainXC16.c
 * Author: haariswasti
 *
 * Created on April 5, 2026, 4:33 PM
 */


#include "xc.h"
#include "roach.h"
#include "BOARD.h"
#include "AD.h"
#include <stdio.h>


#define MOTOR_STEP 20 
#define MOTOR_DELAY 2000000

void flashLEDS(int dir){
    int i;
    int led;
    if(dir){
        for(led = 0; led < 12; led++){
            Roach_LEDSSet( 1 << led);
            for(i = 0; i , 50000; i++);
        }
    }
    else{
        for(led = 11; led >= 0; led--){
            Roach_LEDSSet(1 << led);
            for(i = 0; i , 50000; i++);
            
        }
    }
    Roach_LEDSSet(0x000);    
    
    
}

int main(void) {
    BOARD_Init();
    Roach_Init();
    
    int motor_speed = 0;
    int motor_direction = 1;
    
    Roach_LEDSSet(0x000);
    Roach_LeftMtrSpeed(0);
    Roach_RightMtrSpeed(0);
    
    //more print statements to explain how it works...
    
    printf("Self-Created Roach Test Harness \r\n");
    printf("Four different tests tied to each bumper\r\n");
    printf("Front Left Bumper Test Displays light levels + LED FLash \r\n");
    printf("Front Right bumper test displays Voltage levels + LED flash \r\n");
    printf("Back Left Bumper test runs through the left motor testing all speeds \r\n");
    printf("Back right bumper test runs though the right motor testing the speeds \r\n");
    
    while(1){
        
        int light_lvl = Roach_LightLevel();
        int battery_lvl = Roach_BatteryVoltage();
        
        
        int FL_bumper = Roach_ReadFrontLeftBumper();
        int FR_bumper = Roach_ReadFrontRightBumper();
        int BL_bumper = Roach_ReadRearLeftBumper();
        int BR_bumper = Roach_ReadRearRightBumper();
        
        if(FL_bumper != BUMPER_TRIPPED && FR_bumper != BUMPER_TRIPPED && 
                    BL_bumper != BUMPER_TRIPPED && BR_bumper != BUMPER_TRIPPED){
                Roach_LeftMtrSpeed(0);
                Roach_RightMtrSpeed(0);
                Roach_LEDSSet(0x000);
                motor_speed = 0;
                motor_direction = 1;
            }
            
        if(FL_bumper == BUMPER_TRIPPED){
            flashLEDS(1);
            printf("Front Left bumper Light Level: %d\r\n", light_lvl);
            int i;
            for(i = 0; i < MOTOR_DELAY; i++);
  
        }
        
        if(FR_bumper == BUMPER_TRIPPED){
            flashLEDS(0);
            printf("Front Right bumper Voltage Level: %d\r\n", battery_lvl);
            int i;
            for(i = 0; i < MOTOR_DELAY; i++);
  
        }
        
        if(BL_bumper == BUMPER_TRIPPED){
            int speed;
            for(speed = -100; speed <= 100; speed += MOTOR_STEP){
                Roach_LeftMtrSpeed(speed);
                printf("Left motor: %d\r\n", speed);
                int i;
                for(i = 0; i < MOTOR_DELAY; i++);
               
          
            }
            for(speed = 100; speed >= 0; speed -= MOTOR_STEP){
                Roach_LeftMtrSpeed(speed);
                printf("Left motor: %d\r\n", speed);
                int i;
                for(i = 0; i < MOTOR_DELAY; i++);
            }
                
            
            Roach_LeftMtrSpeed(0);
            printf("Left motor test Done \r\n");
        }
          
        if(BR_bumper == BUMPER_TRIPPED){
            int speed;
            for(speed = -100; speed <= 100; speed += MOTOR_STEP){
                Roach_RightMtrSpeed(speed);
                printf("Right motor: %d\r\n", speed);
                int i;
                for(i = 0; i < MOTOR_DELAY; i++);
                  
               
              
            }
            
            for(speed = 100; speed >= 0; speed -= MOTOR_STEP){
                Roach_RightMtrSpeed(speed);
                printf("Right motor: %d\r\n", speed);
                int i;
                for(i = 0; i < MOTOR_DELAY; i++);
            }
            Roach_RightMtrSpeed(0);
            printf("Right motor test Done \r\n");
        }
        
        
        
       
      
            
                
            

              
            
                    
        
            
            
    }
    
    
    
    return 0;
}
