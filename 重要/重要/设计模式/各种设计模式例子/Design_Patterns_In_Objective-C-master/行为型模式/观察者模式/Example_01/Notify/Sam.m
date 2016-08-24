//
//  Sam.m
//  Observer
//
//  Created by 伟明 毕 on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Sam.h"

@implementation Sam

- (void)receiveNotify:(NSString *)notifyType {
    if ([notifyType isEqualToString:@"up"]) {
        NSLog(@"股票上升了，Sam做出回应……");
    } else if ([notifyType isEqualToString:@"down"]) {
        NSLog(@"股票暴跌，Sam天台排队中……");
    }
}

@end
