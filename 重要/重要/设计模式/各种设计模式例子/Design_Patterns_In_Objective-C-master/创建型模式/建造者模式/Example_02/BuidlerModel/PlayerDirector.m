//
//  PlayerDirector.m
//  BuilderMode
//
//  Created by btw on 15/3/5.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "PlayerDirector.h"
#import "Player.h"
#import "PlayerBuilder.h"

@implementation PlayerDirector

+ (Player *)createPlayerWithBuilder:(PlayerBuilder<PlayerBuilder> *)playerBuilder {
    [playerBuilder addMenu];
    [playerBuilder addPlayList];
    [playerBuilder addMainWindow];
    [playerBuilder addControlBar];
    return [playerBuilder player];
}

@end
