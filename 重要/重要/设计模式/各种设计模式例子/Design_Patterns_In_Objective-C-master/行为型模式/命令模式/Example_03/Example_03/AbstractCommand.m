//
//  AbstractCommand.m
//  Example_03
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "AbstractCommand.h"

@implementation AbstractCommand

- (instancetype)init {
    if (self = [super init]) {
        _value = 0.0f;
    }
    return self;
}

- (instancetype)initWithValue:(float)value {
    if (self = [self init]) {
        _value = value;
    }
    return self;
}
@end
