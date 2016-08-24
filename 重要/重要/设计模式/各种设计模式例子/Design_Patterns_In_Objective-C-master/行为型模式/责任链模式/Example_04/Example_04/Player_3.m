//
//  Player_3.m
//  Example_04
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Player_3.h"

@implementation Player_3

- (void)runWithStick:(Stick *)stick {
    NSLog(@"选手三拿着%@跑", stick);
    [self.nextPlayer runWithStick:stick];
}

@end
