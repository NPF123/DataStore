//
//  GeneralManager.m
//  Chain of Responsibility
//
//  Created by 伟明 毕 on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "GeneralManager.h"

@implementation GeneralManager

- (void)requestApplications:(Request *)request {
    if (request.requestType == RequestTypeSickLeave && request.amount >= 7) {
        NSLog(@"请假大于等于7天的，需要总经理批准！");
    } else {
        NSLog(@"为知请求");
    }
}

@end
