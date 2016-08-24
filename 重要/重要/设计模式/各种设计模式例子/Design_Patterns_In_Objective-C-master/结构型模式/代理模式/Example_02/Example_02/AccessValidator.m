//
//  AccessValidator.m
//  Example_02
//
//  Created by Bi Weiming on 15/7/2.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "AccessValidator.h"

@implementation AccessValidator

- (BOOL)validateWithUserID:(NSString *)userID {
    NSLog(@"在数据库中验证用户%@是否是合法用户？", userID);
    if ([userID isEqualToString:@"杨过"]) {
        NSLog(@"%@登陆成功！", userID);
    } else {
        NSLog(@"%@登录失败！", userID);
    }
    
    return [userID isEqualToString:@"杨过"];
}

@end
