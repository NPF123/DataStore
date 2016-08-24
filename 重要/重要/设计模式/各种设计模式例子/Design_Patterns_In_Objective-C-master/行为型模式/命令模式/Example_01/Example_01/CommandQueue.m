//
//  CommandQueue.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "CommandQueue.h"
#import "Command.h"

@implementation CommandQueue

- (instancetype)init {
    if (self = [super init]) {
        _commandArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addCommand:(Command<Command> *)command {
    [_commandArray addObject:command];
}

- (void)removeCommand:(Command<Command> *)command {
    [_commandArray removeObject:command];
}

- (void)executeCommand {
    [_commandArray enumerateObjectsUsingBlock:^(Command<Command>* command, NSUInteger idx, BOOL *stop) {
        [command execute];
    }];
}


@end
