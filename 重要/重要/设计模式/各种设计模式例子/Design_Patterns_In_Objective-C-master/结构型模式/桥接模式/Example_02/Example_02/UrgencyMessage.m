//
//  UrgencyMessage.m
//  Example_02
//
//  Created by 找塑料 on 16/4/27.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "UrgencyMessage.h"

@implementation UrgencyMessage

- (void)sendeMessageWithUserName:(NSString *)userName message:(NSString *)message
{
    NSString *msg = [@"加急:" stringByAppendingString:message];
    [super sendeMessageWithUserName:userName message:msg];
}

- (NSObject *)watchWithMessageId:(NSString *)messageId
{
    // do something
    return nil;
}

@end
