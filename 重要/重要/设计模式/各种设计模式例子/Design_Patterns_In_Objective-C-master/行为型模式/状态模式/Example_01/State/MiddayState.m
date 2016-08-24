//
//  MiddayState.m
//  State
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "MiddayState.h"
#import "Work.h"
#import "AfternoonState.h"

@implementation MiddayState

- (void)writeProgram:(Work *)work {
    if (work.hour>=12 && work.hour <14) {
        NSLog(@"中午状态");
    } else {
        [work setState:[AfternoonState new]];
        [work writeProgram];
    }
}

@end
