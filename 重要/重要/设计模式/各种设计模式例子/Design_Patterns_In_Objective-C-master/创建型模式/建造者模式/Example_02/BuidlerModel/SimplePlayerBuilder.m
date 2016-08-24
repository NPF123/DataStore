//
//  SimplePlayerBuilder.m
//  BuilderMode
//
//  Created by btw on 15/3/5.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "SimplePlayerBuilder.h"
#import "Player.h"

@implementation SimplePlayerBuilder

- (void)addMenu {
    _player.menu = @"菜单";
}

- (void)addPlayList {
    
}

- (void)addMainWindow {
    
}

- (void)addControlBar {
    _player.controlBar = @"控制条";
}

@end
