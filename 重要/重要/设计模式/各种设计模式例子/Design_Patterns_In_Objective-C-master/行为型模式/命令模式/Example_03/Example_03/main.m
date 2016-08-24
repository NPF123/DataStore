//
//  main.m
//  Example_03
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddCommand.h"
#import "SubCommand.h"
#import "CalculatorForm.h"
#import "CommandQueue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AbstractCommand<AbstractCommand> *c1 = [[AddCommand alloc] initWithValue:20];
        AbstractCommand<AbstractCommand> *c2 = [[SubCommand alloc] initWithValue:9];
        AbstractCommand<AbstractCommand> *c3 = [[AddCommand alloc] initWithValue:4.2];
        AbstractCommand<AbstractCommand> *c4 = [[AddCommand alloc] initWithValue:1.3];
        CommandQueue *queue = [[CommandQueue alloc] init];
        NSLog(@"%.2f", [queue addCommand:c1]);
        NSLog(@"%.2f", [queue addCommand:c2]);
        NSLog(@"%.2f", [queue addCommand:c3]);
        NSLog(@"%.2f", [queue addCommand:c4]);
        NSLog(@"……撤销操作……");
        NSLog(@"%.2f", [queue removeLastCommand]);
        NSLog(@"%.2f", [queue removeLastCommand]);
        NSLog(@"%.2f", [queue removeLastCommand]);
        NSLog(@"……重做操作……");
        NSLog(@"%.2f", [queue redoRemoveLastCommand]);
        NSLog(@"%.2f", [queue redoRemoveLastCommand]);
        
        
//        CalculatorForm *form = [[CalculatorForm alloc] initWithCommand:c1];
//        NSLog(@"%.2f", [form executeAddOperation:10]);
//        NSLog(@"%.2f", [form executeAddOperation:2]);
//        NSLog(@"%.2f", [form executeAddOperation:7]);
//        NSLog(@"%.2f", [form executeAddOperation:10]);
//        NSLog(@"%.2f", [form undo]);
    }
    return 0;
}
