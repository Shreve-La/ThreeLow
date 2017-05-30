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
        BOOL gameOn = YES;

        GameController *gameController = [[GameController alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];

        NSLog(@"Let's Play Threelow! \n Type 'roll' to start");
        NSString* inputStr = [inputHandler getInput];
//        if ([inputStr isEqualToString:@"roll"]){gameOn = YES;}
        
        while (gameOn){
            
            NSMutableArray <Dice *>*lastRoll = [gameController rollNumberofDice:6];
            
            NSLog(@"You rolled: 1)%@ 2)%@ 3)%@ 4)%@ 5)%@ 6)%@", lastRoll[0].diceRep, lastRoll[1].diceRep, lastRoll[2].diceRep, lastRoll[3].diceRep, lastRoll[4].diceRep, lastRoll[5].diceRep);
            
//            NSLog(@"Which die would you like to keep?");
//            inputStr = [inputHandler getInput];
//            int index = [inputStr intValue]-1;
//            [gameController holdDie:index];
            NSLog(@"let's roll again]\n");
            
    
//            for (Dice *die in gameController.roll) {
//                if (die.isHeld){ NSLog(@"[%d] ", die.value);
//                }else{ NSLog(@"%d ", die.value);}
//            }
//    
    
    
    
    }
}
    
    return 0;

    
}

