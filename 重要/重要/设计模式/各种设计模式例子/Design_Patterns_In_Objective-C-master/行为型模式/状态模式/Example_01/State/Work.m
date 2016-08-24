//
//  Work.m
//  State
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Work.h"
#import "MorningState.h"

@implementation Work

- (instancetype)init {
    if (self = [super init]) {
        // 先初始化最初状态
        _currentState = [[MorningState alloc] init];
    }
    return self;
}

- (void)writeProgram {
    [_currentState writeProgram:self];
}

- (void)setState:(State<State> *)state {
    _currentState = state;
}

@end
