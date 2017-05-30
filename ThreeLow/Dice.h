//
//  Dice.h
//  ThreeLow
//
//  Created by swcl on 2017-05-29.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (assign) NSUInteger diceValue;
@property (assign) BOOL isHeld;
@property (strong, nonatomic) NSString *diceRep;



@end

