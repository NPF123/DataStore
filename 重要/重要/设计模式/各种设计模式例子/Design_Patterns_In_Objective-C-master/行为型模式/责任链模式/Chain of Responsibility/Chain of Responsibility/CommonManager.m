//
//  CommonManager.m
//  Chain of Responsibility
//
//  Created by 伟明 毕 on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "CommonManager.h"

@implementation CommonManager

- (void)requestApplications:(Request *)request {
    if (request.requestType == RequestTypeSickLeave && request.amount < 3) {
        NSLog(@"请病假小于3天,需要经理批准！");
    } else {
        if (_superior) [_superior requestApplications:request];
    }
}

@end
