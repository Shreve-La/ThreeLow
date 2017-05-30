//
//  RollDice.h
//  ThreeLow
//
//  Created by swcl on 2017-05-29.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RollDice : NSObject

@property (strong, nonatomic) NSArray *lastRoll;


- (instancetype)initWithDice:(int)dice;

- (NSArray*)getDice:(int)dice;

@end
