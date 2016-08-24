//
//  MulFactory.m
//  FactoryMethod
//
//  Created by btw on 15/3/9.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "MulFactory.h"
#import "MulOperation.h"

@implementation MulFactory

- (Operation <Operation> *)createOperation {
    return [[MulOperation alloc] init];
}

@end
