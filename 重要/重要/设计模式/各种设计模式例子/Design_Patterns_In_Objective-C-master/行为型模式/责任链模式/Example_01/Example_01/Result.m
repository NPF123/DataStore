//
//  Result.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Result.h"
#import "Leave.h"
#import "Superior.h"

@implementation Result

+ (void)printSuccessfulResultWith:(Leave *)leave superior:(Superior<Superior> *)superior {
    NSLog(@"姓名：%@    请假天数：%d      描述：%@    通过，处理人：%@", leave.proposer, leave.day, leave.content, superior);
}

+ (void)printUnsuccessfulResultWith:(Leave *)leave {
    NSLog(@"姓名：%@    请假天数：%d      描述：%@    审核失败，请假天数超过30天！", leave.proposer, leave.day, leave.content);
}

@end
