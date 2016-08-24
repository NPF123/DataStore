//
//  AddFactory.m
//  FactoryMethod
//
//  Created by btw on 15/3/9.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "AddFactory.h"
#import "AddOperation.h"

@implementation AddFactory

- (Operation <Operation> *)createOperation {
    return [[AddOperation alloc] init];
}

@end
