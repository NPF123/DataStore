//
//  CalculatorForm.h
//  Example_03
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbstractCommand;
@protocol AbstractCommand;

@interface CalculatorForm : NSObject

@property (strong, nonatomic) AbstractCommand<AbstractCommand> *command;

- (instancetype)initWithCommand:(AbstractCommand<AbstractCommand> *)command;

- (float)executeAddOperation:(float)number;

- (float)undo;

@end
