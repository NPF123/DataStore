//
//  TV.m
//  AbstractFactory
//
//  Created by btw on 15/2/28.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "TV.h"

@implementation TV

- (instancetype)initWithTVName:(NSString *)TVName price:(float)price {
    if (self = [super init]) {
        self.TVName = TVName;
        self.price = price;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"手机名称：%@, 价格：%.2f", self.TVName, self.price];
}

@end
