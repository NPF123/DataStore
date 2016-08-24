//
//  SpecialUrgencyMessage.m
//  Example_02
//
//  Created by 找塑料 on 16/4/27.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "SpecialUrgencyMessage.h"

@implementation SpecialUrgencyMessage

- (void)sendeMessageWithUserName:(NSString *)userName message:(NSString *)message
{
    NSString *msg = [@"特急:" stringByAppendingString:message];
    [super sendeMessageWithUserName:userName message:msg];
}

- (void)hurryWithMessageId:(NSString *)messageId
{
    // do something
}


@end
