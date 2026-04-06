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

void flashLEDS(void){
    Roach_BarGraph(12);
    Roach_BarGraph(0);
    Roach_BarGraph(12);
    Roach_BarGraph(0);
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
    
    printf(" Self-Created Roach Test Harness \r\n");
    
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
            flashLEDS();
            printf("Front Left bumper Light Level: %d\r\n", light_lvl);
  
        }
        
        if(FR_bumper == BUMPER_TRIPPED){
            flashLEDS();
            printf("Front Right bumper Voltage Level: %d\r\n", battery_lvl);
  
        }
        
        if(BL_bumper == BUMPER_TRIPPED){
            int speed;
            for(speed = -100; speed <= 100; speed += MOTOR_STEP){
                Roach_LeftMtrSpeed(speed);
                printf("Left motor: %d\r\n", speed);
                int i;
                for(i = 0; i < MOTOR_DELAY; i++);
                  
               
              
            }
            Roach_LeftMtrSpeed(0);
            printf(" motor test Done \r\n");
        }
          
        if(BR_bumper == BUMPER_TRIPPED){
            int speed;
            for(speed = -100; speed <= 100; speed += MOTOR_STEP){
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
