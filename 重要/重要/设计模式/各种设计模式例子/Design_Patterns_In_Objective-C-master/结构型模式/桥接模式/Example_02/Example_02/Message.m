//
//  Message.m
//  Example_02
//
//  Created by 找塑料 on 16/4/27.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "Message.h"

@implementation Message

- (instancetype)initWithMethod:(Method <Method> *)method
{
    if (self = [super init]) {
        self.method = method;
    }
    return self;
}

- (void)sendeMessageWithUserName:(NSString *)userName message:(NSString *)message
{
    [self.method sendeMessageWithUserName:userName message:message];
}

@end
