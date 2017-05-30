//
//  main.m
//  ThreeLow
//
//  Created by swcl on 2017-05-29.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "RollDice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = NO;

        GameController *gameController = [[GameController alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        NSLog(@"Let's Play Threelow. Type 'roll' to start");
        NSString* inputStr = [inputHandler getInput];
        if ([inputStr isEqualToString:@"roll"]){gameOn = YES;}
              
        while (gameOn){
        
        NSString* inputStr = [inputHandler getInput];
        if ([inputStr isEqualToString:@"roll"]){gameOn = YES;}
            Dice *d1 = [[Dice alloc] init];
            Dice *d2 = [[Dice alloc] init];
            Dice *d3 = [[Dice alloc] init];
            Dice *d4 = [[Dice alloc] init];
            Dice *d5 = [[Dice alloc] init];
            Dice *d6 = [[Dice alloc] init];
            
            gameController.roll = @[d1, d2,d3,d4,d5,d6];
                
        
            NSLog(@"You rolled: die 1: %d, die 2: %d, die 3: %d, die 4: %d, die 5 %d, die 6: %d  \n", d1.value, d2.value, d3.value, d4.value, d5.value, d6.value);
            NSLog(@"Which die would you like to keep?");
            inputStr = [inputHandler getInput];
            int index = [inputStr intValue]-1;
            [gameController holdDie:index];
            NSLog(@"let's roll again]\n");
            
    
            for (Dice *die in gameController.roll) {
                if (die.isHeld){ NSLog(@"[%d] ", die.value);
                }else{ NSLog(@"%d ", die.value);}
            }
    
    
    
    
    }
}
    
    return 0;

    
}

