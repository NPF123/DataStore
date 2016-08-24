//
//  PigCard.m
//  Example_03
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Card.h"

@implementation Card

- (instancetype)initWithCardName:(NSString *)cardName {
    if (self = [super init]) {
        self.cardName = cardName;
    }
    return self;
}

@end
