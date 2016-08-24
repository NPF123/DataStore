//
//  SMSMethod.m
//  Example_02
//
//  Created by 找塑料 on 16/4/27.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "SMSMethod.h"

@implementation SMSMethod

- (void)sendeMessageWithUserName:(NSString *)userName message:(NSString *)message
{
    NSLog(@"使用站内短消息的方式，发送消息%@给%@", message, userName);
}

@end
