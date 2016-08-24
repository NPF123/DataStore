//
//  PersonBuilder.m
//  Builder
//
//  Created by 伟明 毕 on 15/2/23.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "PersonBuilder.h"

@implementation PersonBuilder

- (instancetype)init {
    if (self = [super init]) {
        _person = [[Person alloc] init];
    }
    return self;
}

- (Person *)getPerson {
    return _person;
}

@end
