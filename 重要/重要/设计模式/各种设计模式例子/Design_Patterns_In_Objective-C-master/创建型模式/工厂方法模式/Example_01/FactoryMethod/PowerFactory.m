//
//  PowerFactory.m
//  FactoryMethod
//
//  Created by Bi Weiming on 15/6/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "PowerFactory.h"
#import "PowerOperation.h"

@implementation PowerFactory

- (Operation <Operation> *)createOperation {
    return [[PowerOperation alloc] init];
}

@end
