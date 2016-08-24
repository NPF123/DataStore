//
//  MenuItem.h
//  Example_04
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Command;
@protocol Command;

@interface MenuItem : NSObject

@property (strong, nonatomic) Command<Command>* command;

- (instancetype)initWithCommand:(Command<Command> *)command;

- (void)onClick;

@end
