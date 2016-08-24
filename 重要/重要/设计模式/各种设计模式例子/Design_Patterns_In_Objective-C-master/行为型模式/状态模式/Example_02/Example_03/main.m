//
//  main.m
//  Example_03
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

// The state pattern is used to alter the behaviour of an object as its internal state changes. The pattern allows the class for an object to apparently change at run-time.
// 状态模式是用来改变一个对象的行为，因为它的内部状态变化。该模式允许一个对象的类，显然在运行时改变。

#import <Foundation/Foundation.h>
#import "Context.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Context *context = [[Context alloc] init];
        NSLog(@"%d", context.isAuthorized);
        NSLog(@"%@", context.userId);
        
        [context changeStateToAuthorizedWithUserId:@"admin"];
        NSLog(@"%d", context.isAuthorized);
        NSLog(@"%@", context.userId);
        
        [context changeStateToUnauthorized];
        
        NSLog(@"%d", context.isAuthorized);
        NSLog(@"%@", context.userId);
        
    }
    return 0;
}
