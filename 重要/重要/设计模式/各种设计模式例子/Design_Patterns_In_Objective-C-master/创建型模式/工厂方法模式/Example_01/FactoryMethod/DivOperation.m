//
//  DivOperation.m
//  FactoryMethod
//
//  Created by btw on 15/3/9.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "DivOperation.h"

@implementation DivOperation

- (double)getResult {
    NSAssert(self.op2 != 0, @"分母不能为零！");
    return self.op1 / self.op2;
}

@end
