//
//  main.m
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

// The strategy pattern is used to create an interchangeable family of algorithms from which the required process is chosen at run-time.
// 该策略模式是用来创建一个可交换的家庭的算法，从该算法的选择在运行时。

#import <Foundation/Foundation.h>
#import "Printer.h"
#import "UpperCaseStrategy.h"
#import "LowerCaseStrategy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 初始化策略类
        id<PrintStrategy> lowerStrategy = [[LowerCaseStrategy alloc] init];
        id<PrintStrategy> upperStrategy = [[UpperCaseStrategy alloc] init];
        
        // 使用策略类
        Printer *printer = [[Printer alloc] initWithStrategy:lowerStrategy];
        NSLog(@"%@", [printer printString:@"O tempora, o mores!"]);
        
        printer.strategy = upperStrategy;
        NSLog(@"%@", [printer printString:@"O tempora, o mores!"]);
        
    }
    return 0;
}
