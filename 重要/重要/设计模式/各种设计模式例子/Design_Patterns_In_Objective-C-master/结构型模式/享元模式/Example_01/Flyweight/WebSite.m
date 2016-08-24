//
//  WebSite.m
//  Flyweight
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "WebSite.h"

@implementation WebSite

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = [name copy];
    }
    return self;
}

@end
