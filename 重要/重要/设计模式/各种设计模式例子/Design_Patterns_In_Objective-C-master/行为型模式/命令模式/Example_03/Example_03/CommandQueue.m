//
//  CommandQueue.m
//  Example_03
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "CommandQueue.h"
#import "AbstractCommand.h"

@implementation CommandQueue

- (instancetype)init {
    if (self = [super init]) {
        _commandArray = [[NSMutableArray alloc] init];
        _deletedCommandArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (float)addCommand:(AbstractCommand<AbstractCommand> *)command {
    [_commandArray addObject:command];
    return [self getResult];
}

- (float)removeCommand:(AbstractCommand<AbstractCommand> *)command {
    [_deletedCommandArray addObject:command];
    [_commandArray removeObject:command];
    return [self getResult];
}

- (float)removeLastCommand {
    [_deletedCommandArray addObject:[_commandArray lastObject]];
    [_commandArray removeLastObject];
    return [self getResult];
}

- (float)redoRemoveLastCommand {
    if([_deletedCommandArray count] > 0) {
        [_commandArray addObject:[_deletedCommandArray lastObject]];
        [_deletedCommandArray removeLastObject];
    }
    return [self getResult];
}

- (float)removeAllCommand {
    [_commandArray enumerateObjectsUsingBlock:^(AbstractCommand<AbstractCommand>* command, NSUInteger idx, BOOL *stop) {
        command.value = 0.0;
    }];
    
    return [self getResult];
}

- (float)getResult {
    __block float result = 0.0;
    [_commandArray enumerateObjectsUsingBlock:^(AbstractCommand<AbstractCommand>* command, NSUInteger idx, BOOL *stop) {
        result += command.value;
    }];
    return result;
}

@end
