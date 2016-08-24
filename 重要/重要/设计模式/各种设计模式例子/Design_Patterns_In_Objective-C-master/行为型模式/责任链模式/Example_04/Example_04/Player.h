//
//  Player.h
//  Example_04
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Stick;

@protocol Player <NSObject>

- (void)runWithStick:(Stick *)stick;

@end

@interface Player : NSObject

@property (strong, nonatomic) Player<Player> *nextPlayer;

@end
