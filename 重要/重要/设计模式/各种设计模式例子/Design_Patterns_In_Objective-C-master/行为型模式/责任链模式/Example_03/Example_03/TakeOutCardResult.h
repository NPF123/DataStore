//
//  TakeOutCardResult.h
//  Example_03
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Player;
@protocol Player;

@interface TakeOutCardResult : NSObject

+ (void)printSuccessfulResultWith:(Player<Player> *)player;
+ (void)printUnSuccessfulResultWith:(Player<Player> *)player;

@end
