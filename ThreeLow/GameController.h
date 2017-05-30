//
//  GameController.h
//  ThreeLow
//
//  Created by swcl on 2017-05-29.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"



@interface GameController : NSObject

@property (strong, nonatomic) NSArray <Dice *> *roll;
@property (strong, nonatomic) NSMutableArray *held;
@property (nonatomic, strong) NSArray <NSString*> *diceImages;

-(void)holdDie:(int)index;

-(NSMutableArray*)rollNumberofDice:(int)dice;


@end
