//
//  Manager.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Manager.h"
#import "Leave.h"
#import "Result.h"

@implementation Manager

- (void)approvalWithLeave:(Leave *)leave {
    if (leave.day >=3 && leave.day < 10) {
        [Result printSuccessfulResultWith:leave superior:self];
    } else {
        [self.nextSuperior approvalWithLeave:leave];
    }
}

- (NSString *)description {
    return @"经理";
}

@end
