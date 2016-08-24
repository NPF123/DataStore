//
//  Decorator.m
//  Example_01
//
//  Created by 伟明 毕 on 15/3/20.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator

- (void)setComponent:(ABS_Component<ABS_Component> *)component {
    _component = component;
}

// 重写Operation方法，实际执行的是Component的Operation方法
- (void)operation {
    if (_component != nil) {
        [_component operation];
    }
}

@end
