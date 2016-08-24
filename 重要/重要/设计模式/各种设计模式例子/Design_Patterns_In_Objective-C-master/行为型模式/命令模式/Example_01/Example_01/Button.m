//
//  Button.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Button.h"
#import "Command.h"

@implementation Button

- (instancetype)initWithName:(NSString *)buttonName Command:(Command<Command> *)command {
    if (self = [super init]) {
        self.buttonName = buttonName;
        self.command = command;
    }
    return self;
}

- (void)click {
    NSLog(@"点击了%@", self);
    [self.command execute];
}

@end
