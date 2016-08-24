//
//  main.m
//  Example_05
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

// The command pattern is used to express a request, including the call to be made and all of its required parameters, in a command object. The command may then be executed immediately or held for later use.
// 命令模式是用来表示请求的，包括调用所需的调用和所有的所需参数，在命令对象中。该命令可立即执行或为以后使用。

#import <Foundation/Foundation.h>
#import "HAL9000DoorsOperations.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *podBayDoors = @"Pod Bay Doors";
        
        HAL9000DoorsOperations *doorModule = [[HAL9000DoorsOperations alloc] initWithDoors:podBayDoors];
        
        NSLog(@"%@", [doorModule open]);
        NSLog(@"%@", [doorModule close]);
    }
    return 0;
}
