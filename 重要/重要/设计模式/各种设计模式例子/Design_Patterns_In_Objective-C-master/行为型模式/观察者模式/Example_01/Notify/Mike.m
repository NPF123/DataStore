//
//  Mike.m
//  Observer
//
//  Created by 伟明 毕 on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Mike.h"

@implementation Mike

- (void)receiveNotify:(NSString *)notifyType {
    if ([notifyType isEqualToString:@"up"]) {
        NSLog(@"股票上升了，Mike把所有股票卖了！");
    } else if([notifyType isEqualToString:@"down"]) {
        NSLog(@"股票大跌，Mike跑路了！");
    }
}

@end
