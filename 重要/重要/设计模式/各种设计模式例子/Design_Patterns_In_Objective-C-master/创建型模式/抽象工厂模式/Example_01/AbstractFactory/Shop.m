//
//  Shop.m
//  AbstractFactory
//
//  Created by btw on 15/2/28.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Shop.h"

@implementation Shop

- (instancetype)initWithName:(NSString *)shopName {
    if (self = [super init]) {
        self.shopName = shopName;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"店铺名称：%@", self.shopName];
}

@end
