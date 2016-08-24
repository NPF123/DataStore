//
//  NightState.m
//  State
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "NightState.h"
#import "Work.h"
#import "LateAtNightState.h"

@implementation NightState

- (void)writeProgram:(Work *)work {
    if (work.hour >= 18 && work.hour < 24) {
        NSLog(@"晚上状态");
    } else {
        [work setState:[LateAtNightState new]];
        [work writeProgram];
    }
}

@end
