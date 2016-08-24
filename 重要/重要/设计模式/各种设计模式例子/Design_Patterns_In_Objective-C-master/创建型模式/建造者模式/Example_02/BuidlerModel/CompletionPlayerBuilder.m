//
//  CompletionPlayerBuilder.m
//  BuilderMode
//
//  Created by btw on 15/3/5.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "CompletionPlayerBuilder.h"
#import "Player.h"

// 菜单、播放列表、主窗口、控制条
@implementation CompletionPlayerBuilder

- (void)addMenu {
    _player.menu = @"菜单";
}

- (void)addPlayList {
    _player.playList = @"播放列表";
}

- (void)addMainWindow {
    _player.mainWindow = @"主窗口";
}

- (void)addControlBar {
    _player.controlBar = @"控制条";
}

@end
