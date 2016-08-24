//
//  Phone.m
//  AbstractFactory
//
//  Created by btw on 15/2/28.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Phone.h"

@implementation Phone

- (instancetype)initWithPhoneName:(NSString *)phoneName price:(float)price {
    if (self = [super init]) {
        self.phoneName = phoneName;
        self.price = price;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"手机名称：%@, 价格：%.2f", self.phoneName, self.price];
}

@end
