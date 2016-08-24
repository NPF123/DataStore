//
//  ChungasRevengeDisplay.m
//  Example_02
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "ChungasRevengeDisplay.h"

@implementation ChungasRevengeDisplay

- (instancetype)initWithFont:(NSString *)font
{
    if (self = [super init]) {
        _font = font;
    }
    return self;
}

- (ChungasRevengeDisplay *)clone
{
    return [[ChungasRevengeDisplay alloc] initWithFont:self.font];
}

@end
