//
//  Player_2.m
//  Example_03
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Player_2.h"
#import "Card.h"
#import "TakeOutCardResult.h"

@implementation Player_2

- (void)takeOutCard:(Card *)card {
    if ([card.cardName isEqualToString:@"猪"] && (card.index % 4 == 2)) {
        [TakeOutCardResult printSuccessfulResultWith:self];
    } else {
        [self.nextPlayer takeOutCard:card];
    }
}

- (NSString *)description {
    return @"玩家二";
}

@end
