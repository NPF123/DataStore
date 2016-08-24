//
//  RealSearcher.m
//  Example_02
//
//  Created by Bi Weiming on 15/7/2.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "RealSearcher.h"

@implementation RealSearcher

- (NSString *)doSearchWithUserId:(NSString *)userID keyword:(NSString *)keyword {
    NSLog(@"用户'%@'使用关键词'%@'查询商务信息！", userID, keyword);
    return @"返回具体内容";
}

@end
