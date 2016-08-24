//
//  Player_1.m
//  Example_04
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Player_1.h"

@implementation Player_1

- (void)runWithStick:(Stick *)stick {
    NSLog(@"选手一拿着%@跑", stick);
    NSLog(@"选手一跑累了快倒下，坚持把%@递到%@", stick, self.nextPlayer);
    [self.nextPlayer runWithStick:stick];
}

@end
