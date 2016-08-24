//
//  SubFactory.m
//  FactoryMethod
//
//  Created by btw on 15/3/9.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "SubFactory.h"
#import "SubOperation.h"

@implementation SubFactory

- (Operation <Operation> *)createOperation {
    return [[SubOperation alloc] init];
}

@end
