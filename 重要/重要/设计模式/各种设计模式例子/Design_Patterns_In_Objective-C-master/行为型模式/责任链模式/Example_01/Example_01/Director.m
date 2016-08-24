//
//  Director.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Director.h"
#import "Leave.h"
#import "Result.h"

@implementation Director

- (void)approvalWithLeave:(Leave *)leave {
    if (leave.day > 0 && leave.day <3) {
        [Result printSuccessfulResultWith:leave superior:self];
    } else {
        [self.nextSuperior approvalWithLeave:leave];
    }
}

- (NSString *)description {
    return @"主任";
}

@end
