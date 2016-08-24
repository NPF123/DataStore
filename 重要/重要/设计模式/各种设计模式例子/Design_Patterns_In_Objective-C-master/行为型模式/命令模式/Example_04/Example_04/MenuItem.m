//
//  MenuItem.m
//  Example_04
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "MenuItem.h"
#import "Command.h"

@implementation MenuItem

- (instancetype)initWithCommand:(Command<Command> *)command {
    if (self = [super init]) {
        self.command = command;
    }
    return self;
}

- (void)onClick {
    [self.command execute];
}

@end
