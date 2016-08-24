//
//  ConcreteDecoratorB.m
//  Example_01
//
//  Created by 伟明 毕 on 15/3/20.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "ConcreteDecoratorB.h"

@implementation ConcreteDecoratorB

- (void)operation {
    [super operation];
    [self addedBehavior];
    NSLog(@"具体装饰对象B的操作");
}

// 本类独有的方法，以区别于ConcreteDecoratorB
- (void)addedBehavior {
    
}

@end
