//
//  ConcreteDecoratorA.m
//  Example_01
//
//  Created by 伟明 毕 on 15/3/20.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "ConcreteDecoratorA.h"

@interface ConcreteDecoratorA() {
    NSString *_addedState;
}

@end

@implementation ConcreteDecoratorA

- (void)operation {
    [super operation];
    _addedState = @"New State";
    NSLog(@"具体装饰对象A的操作");
}

@end
