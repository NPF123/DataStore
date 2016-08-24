//
//  AfternoonState.m
//  State
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "AfternoonState.h"
#import "Work.h"
#import "NightState.h"

@implementation AfternoonState

- (void)writeProgram:(Work *)work {
    if (work.hour >=14 && work.hour <18) {
        NSLog(@"下午状态");
    } else {
        [work setState:[NightState new]];
        [work writeProgram];
    }
}

@end
