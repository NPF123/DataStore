//
//  QueueButton.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "QueueButton.h"
#import "CommandQueue.h"

@implementation QueueButton

- (instancetype)initWithCommandQueue:(CommandQueue *)commandQueue {
    if (self = [super init]) {
        self.queue = commandQueue;
    }
    return self;
}

- (void)call {
    NSLog(@"执行命令队列～～");
    [self.queue executeCommand];
}

@end
