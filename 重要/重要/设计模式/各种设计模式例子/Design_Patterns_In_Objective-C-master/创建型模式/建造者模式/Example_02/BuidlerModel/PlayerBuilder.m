//
//  PlayerBuilder.m
//  BuilderMode
//
//  Created by btw on 15/3/5.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "PlayerBuilder.h"
#import "Player.h"

@implementation PlayerBuilder

- (instancetype)init {
    if (self = [super init]) {
        _player = [[Player alloc] init];
    }
    return self;
}

- (Player *)player {
    return _player;
}

@end
