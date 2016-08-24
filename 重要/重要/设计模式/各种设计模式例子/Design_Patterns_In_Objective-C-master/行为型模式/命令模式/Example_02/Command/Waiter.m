//
//  Waiter.m
//  Command
//
//  Created by btw on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Waiter.h"

@implementation Waiter

- (instancetype)init {
    if (self = [super init]) {
        _commands = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addCommand:(Command<Command> *)command {
    [_commands addObject:command];
}

- (void)removeCommand:(Command<Command> *)command {
    [_commands removeObject:command];
}

- (void)notify {
    for (Command <Command> *command in _commands) {
        [command executeCommand];
    }
}

@end
