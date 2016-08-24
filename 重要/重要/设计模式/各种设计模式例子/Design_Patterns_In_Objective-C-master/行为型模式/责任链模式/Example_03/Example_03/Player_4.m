//
//  Player_4.m
//  Example_03
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Player_4.h"
#import "Card.h"
#import "TakeOutCardResult.h"

@implementation Player_4

- (void)takeOutCard:(Card *)card {
    if ([card.cardName isEqualToString:@"猪"] && (card.index % 4 == 4)) {
        [TakeOutCardResult printSuccessfulResultWith:self];
    } else {
        [TakeOutCardResult printUnSuccessfulResultWith:self];
    }
}

- (NSString *)description {
    return @"玩家四";
}

@end
