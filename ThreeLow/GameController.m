//
//  GameController.m
//  ThreeLow
//
//  Created by swcl on 2017-05-29.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _held = [[NSMutableArray alloc] init];
        _diceImages = @[@"?", @"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
        
    }
    return self;
}

-(NSMutableArray*)rollNumberofDice:(int)dice{
    NSLog(@"Dice Rolled: %d", dice);
    NSMutableArray <Dice*> *roll = [[NSMutableArray alloc]  initWithCapacity:dice];
    for (int i = 0 ; i < dice ; i++){
        NSLog(@"%d", i);
        roll[i] = [[Dice alloc] init];
        roll[i].diceRep = self.diceImages[roll[i].diceValue];
    NSLog(@"Dice Value:, %@", roll[i].diceRep);
    }
    return roll;
}

-(void)holdDie:(int)index{
    self.roll[index].isHeld = YES;
    [self.held addObject: self.roll[index]];    
    }

@end
