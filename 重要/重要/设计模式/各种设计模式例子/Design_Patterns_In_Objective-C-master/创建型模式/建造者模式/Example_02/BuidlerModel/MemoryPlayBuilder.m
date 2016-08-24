//
//  MemoryPlayBuilder.m
//  BuilderMode
//
//  Created by btw on 15/3/5.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "MemoryPlayBuilder.h"
#import "Player.h"

@implementation MemoryPlayBuilder

- (void)addMenu {
    
}

- (void)addControlBar {
    _player.controlBar = @"控制条";
}

- (void)addMainWindow {
    _player.mainWindow = @"主窗口";
}

- (void)addPlayList {
    _player.playList = @"播放列表";
}

@end
