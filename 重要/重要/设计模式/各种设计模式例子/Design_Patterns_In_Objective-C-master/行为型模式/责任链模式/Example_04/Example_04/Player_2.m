//
//  Player_2.m
//  Example_04
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Player_2.h"

@implementation Player_2

- (void)runWithStick:(Stick *)stick {
    NSLog(@"选手二拿着%@跑", stick);
    [self.nextPlayer runWithStick:stick];
}

@end
