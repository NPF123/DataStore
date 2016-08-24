//
//  Logger.m
//  Example_02
//
//  Created by Bi Weiming on 15/7/2.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)logWithUserID:(NSString *)userID {
    NSLog(@"更新数据库，用户%@查询次数加1！", userID);
}

@end
