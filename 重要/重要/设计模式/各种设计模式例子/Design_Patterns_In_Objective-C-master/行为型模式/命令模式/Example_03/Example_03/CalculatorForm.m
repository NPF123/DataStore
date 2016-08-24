//
//  CalculatorForm.m
//  Example_03
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "CalculatorForm.h"
#import "AddCommand.h"

@implementation CalculatorForm

- (instancetype)initWithCommand:(AbstractCommand<AbstractCommand> *)command {
    if (self = [super init]) {
        self.command = command;
    }
    return self;
}

- (float)executeAddOperation:(float)number {
    self.command.value = number;
    return [self.command execute];
}

- (float)undo {
    return [self.command undo];
}

@end
