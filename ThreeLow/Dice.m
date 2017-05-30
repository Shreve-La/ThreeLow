//
//  Dice.m
//  ThreeLow
//
//  Created by swcl on 2017-05-29.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "Dice.h"
#import "GameController.h"

@implementation Dice

- (instancetype)init;
{
    self = [super init];
    if (self) {
        _diceValue = arc4random_uniform(6)+1;
        _isHeld = NO;
        NSLog(@"%ld", _diceValue);
    }
    return self;
}



@end
