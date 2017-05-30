//
//  RollDice.m
//  ThreeLow
//
//  Created by swcl on 2017-05-29.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "RollDice.h"
#import "Dice.h"

@implementation RollDice

- (instancetype)initWithDice:(int)dice
    {
        self = [super init];
        if (self) {
            NSArray *temp = [self getDice:dice];
            [_lastRoll arrayByAddingObjectsFromArray:temp];
        }
        return self;
    }

- (NSArray*)getDice:(int)dice {
             NSMutableArray *temp = [NSMutableArray new];
             for (int i=0; i<dice; i++){
                 Dice *die = [[Dice alloc] init];
                 [temp addObject:die];
             }
    return temp;
}


@end
