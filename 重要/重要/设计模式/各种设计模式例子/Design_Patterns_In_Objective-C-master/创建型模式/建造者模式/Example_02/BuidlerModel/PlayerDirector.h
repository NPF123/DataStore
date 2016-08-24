//
//  PlayerDirector.h
//  BuilderMode
//
//  Created by btw on 15/3/5.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Player;
@class PlayerBuilder;
@protocol PlayerBuilder;

@interface PlayerDirector : NSObject

+ (Player *)createPlayerWithBuilder:(PlayerBuilder <PlayerBuilder> *)playerBuilder;

@end
