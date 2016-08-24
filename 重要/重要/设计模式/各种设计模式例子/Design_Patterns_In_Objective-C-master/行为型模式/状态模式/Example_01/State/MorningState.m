//
//  ForenoonState.m
//  State
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "MorningState.h"
#import "Work.h"
#import "MiddayState.h"

@implementation MorningState

- (void)writeProgram:(Work *)work {
    if (work.hour >=6 && work.hour < 12) {
        NSLog(@"早上状态");
    } else {
        [work setState:[[MiddayState alloc] init]];
        [work writeProgram];
    }
}

@end
