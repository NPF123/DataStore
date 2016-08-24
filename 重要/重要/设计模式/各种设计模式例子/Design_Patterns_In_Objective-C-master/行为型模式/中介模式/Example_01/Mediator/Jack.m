//
//  Jack.m
//  Mediator
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Jack.h"
#import "Mediator.h"

@implementation Jack

- (void)sendMessage:(NSString *)message {
    [_mediator sendMessage:message student:self];
}

- (void)receiveMessage:(NSString *)message {
    NSLog(@"Jack收到消息：%@", message);
}

@end
