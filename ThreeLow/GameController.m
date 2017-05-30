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
    }
    return self;
}



-(void)holdDie:(int)index{
    self.roll[index].isHeld = YES;
    [self.held addObject: self.roll[index]];    
    }

@end
