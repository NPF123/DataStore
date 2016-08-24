//
//  LateAtNightState.m
//  State
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "LateAtNightState.h"
#import "Work.h"
#import "UnknownState.h"

@implementation LateAtNightState

- (void)writeProgram:(Work *)work {
    if (work.hour == 24 || (work.hour>0 && work.hour < 6)) {
        NSLog(@"深夜状态");
    } else {
        [work setState:[UnknownState new]];
        [work writeProgram];
    }
}

@end
