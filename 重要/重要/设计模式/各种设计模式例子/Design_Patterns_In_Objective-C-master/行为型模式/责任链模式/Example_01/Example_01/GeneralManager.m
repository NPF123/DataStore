//
//  GeneralManager.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "GeneralManager.h"
#import "Result.h"
#import "Leave.h"

@implementation GeneralManager

- (void)approvalWithLeave:(Leave *)leave {
    if (leave.day >= 10 && leave.day < 30) {
        [Result printSuccessfulResultWith:leave superior:self];
    } else {
        [Result printUnsuccessfulResultWith:leave];
    }
}

- (NSString *)description {
    return @"总经理";
}

@end
