//
//  PersonDirector.m
//  Builder
//
//  Created by 伟明 毕 on 15/2/23.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "PersonDirector.h"


@implementation PersonDirector

- (instancetype)initWithBuilder:(PersonBuilder<PersonBuilder>*)builder {
    if (self = [super init]) {
        self.builder = builder;
    }
    return self;
}

- (void)createPerson {
    [self.builder buildBody];
    [self.builder buildHead];
}

- (void)createAbstractPerson {
    [self.builder buildHead];
}

@end
