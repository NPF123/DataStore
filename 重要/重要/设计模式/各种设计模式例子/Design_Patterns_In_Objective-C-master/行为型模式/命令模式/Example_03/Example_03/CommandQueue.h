//
//  CommandQueue.h
//  Example_03
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbstractCommand;
@protocol AbstractCommand;

@interface CommandQueue : NSObject {
    NSMutableArray *_commandArray;
    NSMutableArray *_deletedCommandArray;
}

- (float)addCommand:(AbstractCommand<AbstractCommand> *)command;
- (float)removeCommand:(AbstractCommand<AbstractCommand> *)command;
- (float)removeLastCommand;
- (float)redoRemoveLastCommand;
- (float)removeAllCommand;
@end
