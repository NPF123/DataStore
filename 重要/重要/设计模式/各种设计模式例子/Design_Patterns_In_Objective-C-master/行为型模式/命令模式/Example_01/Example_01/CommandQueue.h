//
//  CommandQueue.h
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Command;
@protocol Command;

@interface CommandQueue : NSObject
{
    NSMutableArray *_commandArray;
}

- (void)addCommand:(Command<Command> *)command;
- (void)removeCommand:(Command<Command> *)command;
- (void)executeCommand;

@end
