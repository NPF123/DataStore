//
//  Loon.m
//  Proxy
//
//  Created by 伟明 毕 on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Loon.h"

@implementation Loon

- (void)loonEat {
    [self eat];
}

- (void)loonDressing {
    [self dressing];
}

- (void)eat {
    if (_delegate) [_delegate eat];
}

- (void)dressing {
    if (_delegate) [_delegate dressing];
}

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

@end
