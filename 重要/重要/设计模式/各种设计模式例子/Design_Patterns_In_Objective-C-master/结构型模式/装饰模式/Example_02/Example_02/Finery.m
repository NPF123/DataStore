//
//  Finery.m
//  Example_02
//
//  Created by 伟明 毕 on 15/3/20.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Finery.h"

@implementation Finery

- (void)setDecorate:(Person *)component {
    _component = component;
}

- (void)show {
    if (_component != nil) {
        [_component show];
    }
}

@end
