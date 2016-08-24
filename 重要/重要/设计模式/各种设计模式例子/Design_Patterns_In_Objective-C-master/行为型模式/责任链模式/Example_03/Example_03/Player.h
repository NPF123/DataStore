//
//  Player.h
//  Example_03
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Card;

@protocol Player <NSObject>

- (void)takeOutCard:(Card *)card;

@end

/**
 *  玩家
 */
@interface Player : NSObject

@property (strong, nonatomic) Player<Player> *nextPlayer;

@end
