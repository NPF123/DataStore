//
//  Sam.m
//  Mediator
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Sam.h"
#import "Mediator.h"

@implementation Sam

- (void)sendMessage:(NSString *)message {
    [_mediator sendMessage:message student:self];
}

- (void)receiveMessage:(NSString *)message {
    NSLog(@"Sam收到消息：%@", message);
}

@end
