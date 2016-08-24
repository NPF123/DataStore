//
//  CommonMessage.m
//  Example_02
//
//  Created by 找塑料 on 16/4/27.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "CommonMessage.h"

@implementation CommonMessage

- (void)sendeMessageWithUserName:(NSString *)userName message:(NSString *)message
{
    // 对于普通消息，什么都不干，直接调用父类的方法，把消息发送出去就可以了
    [super sendeMessageWithUserName:userName message:message];
}

@end
