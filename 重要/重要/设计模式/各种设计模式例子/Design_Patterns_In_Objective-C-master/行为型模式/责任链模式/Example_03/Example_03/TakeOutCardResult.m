//
//  TakeOutCardResult.m
//  Example_03
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "TakeOutCardResult.h"
#import "Player.h"

@implementation TakeOutCardResult

+ (void)printSuccessfulResultWith:(Player<Player> *)player {
    NSLog(@"%@抽到猪牌，赢了！", player);
}

+ (void)printUnSuccessfulResultWith:(Player<Player> *)player {
    NSLog(@"这张牌不是猪牌，下一轮抽牌！");
}

@end
