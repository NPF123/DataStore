//
//  Button.h
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Command;
@protocol Command;

/**
 *  请求的发送者
 */
@interface Button : NSObject

@property (strong, nonatomic) NSString *buttonName;
@property (strong, nonatomic) Command<Command> *command;

- (instancetype)initWithName:(NSString *)buttonName Command:(Command<Command> *)command;

- (void)click;

@end
