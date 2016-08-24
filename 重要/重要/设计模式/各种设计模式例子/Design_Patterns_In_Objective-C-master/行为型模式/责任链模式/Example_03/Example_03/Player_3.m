//
//  Player_3.m
//  Example_03
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Player_3.h"
#import "Card.h"
#import "TakeOutCardResult.h"

@implementation Player_3

- (void)takeOutCard:(Card *)card {
    if ([card.cardName isEqualToString:@"猪"] && (card.index % 4 == 3)) {
        [TakeOutCardResult printSuccessfulResultWith:self];
    } else {
        [self.nextPlayer takeOutCard:card];
    }
}

- (NSString *)description {
    return @"玩家三";
}

@end
