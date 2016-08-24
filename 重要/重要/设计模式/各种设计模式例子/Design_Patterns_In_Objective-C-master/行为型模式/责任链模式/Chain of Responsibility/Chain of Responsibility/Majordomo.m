//
//  Majordomo.m
//  Chain of Responsibility
//
//  Created by 伟明 毕 on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Majordomo.h"

@implementation Majordomo

- (void)requestApplications:(Request *)request {
    if (request.requestType == RequestTypeSickLeave && request.amount < 7) {
        NSLog(@"请假大于等于3天，小于7天的，需要总监批准！");
    } else {
        if (_superior) [_superior requestApplications:request];
    }
}

@end
