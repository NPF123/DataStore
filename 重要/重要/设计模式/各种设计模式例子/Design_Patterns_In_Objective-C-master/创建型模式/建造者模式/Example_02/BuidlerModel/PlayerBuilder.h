//
//  PlayerBuilder.h
//  BuilderMode
//
//  Created by btw on 15/3/5.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

/*
 menu;
 playList;
 mainWindow;
 controlBar;
 */

#import <Foundation/Foundation.h>

@class Player;

@protocol PlayerBuilder <NSObject>

- (void)addMenu;
- (void)addPlayList;
- (void)addMainWindow;
- (void)addControlBar;

@end

@interface PlayerBuilder : NSObject
{
    Player *_player;
}

- (Player *)player;

@end
