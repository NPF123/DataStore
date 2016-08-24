//
//  Waiter.h
//  Command
//
//  Created by btw on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface Waiter : NSObject
{
    NSMutableArray *_commands;
}

- (void)addCommand:(Command <Command> *)command;

- (void)removeCommand:(Command <Command> *)command;

- (void)notify;

@end
