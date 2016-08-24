//
//  Teacher.m
//  Example_02
//
//  Created by btw on 15/3/20.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"

@implementation Teacher

- (instancetype)forwardingTargetForSelector:(SEL)aSelector {
    id s = [[Student alloc] init];
    if ([s respondsToSelector:aSelector]) {
        return s;
    }
    return nil;
}

@end
