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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        InputHandler *inputHandler = [[InputHandler alloc] init];
        
        
        while (gameOn){
        NSLog(@"Let's Play Threelow. Type 'roll' to start. \n What would you like to do?");
        NSString* inputStr = [inputHandler getInput];
        if ([inputStr isEqualToString:@"roll"]){gameOn = YES;}
        
        Dice *die1 = [[Dice alloc] init];
        Dice *die2 = [[Dice alloc] init];
        Dice *die3 = [[Dice alloc] init];
        Dice *die4 = [[Dice alloc] init];
        Dice *die5 = [[Dice alloc] init];
        Dice *die6 = [[Dice alloc] init];
        
        NSLog(@"%d, %d, %d, %d, %d, %d", die1.value, die2.value, die3.value, die4.value, die5.value, die6.value);
            inputStr = [inputHandler getInput];
    
    
    
    
    
    
    
    }
}
    
    return 0;

    
}
