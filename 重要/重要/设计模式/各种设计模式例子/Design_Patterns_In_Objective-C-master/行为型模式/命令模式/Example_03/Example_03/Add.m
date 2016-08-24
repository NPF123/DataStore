//
//  Add.m
//  Example_03
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Add.h"

@implementation Add

- (instancetype)init {
    if (self = [super init]) {
        _value = 0.0f;
    }
    return self;
}

- (float)add:(float)value {
    return _value += value;
}

@end
