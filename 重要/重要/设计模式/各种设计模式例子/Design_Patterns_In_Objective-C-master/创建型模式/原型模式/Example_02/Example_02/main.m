//
//  main.m
//  Example_02
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

// The prototype pattern is used to instantiate a new object by copying all of the properties of an existing object, creating an independent clone. This practise is particularly useful when the construction of a new object is inefficient.
// 型模式是用来实例化一个新对象通过复制所有现有对象的特性，建立一个独立的克隆。当一个新的对象的建设是低效的，这种做法是特别有用的。

#import <Foundation/Foundation.h>
#import "ChungasRevengeDisplay.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ChungasRevengeDisplay *prototype = [[ChungasRevengeDisplay alloc] initWithFont:@"微软雅黑"];
        
        ChungasRevengeDisplay *philippe = [prototype clone];
        philippe.name  = @"Philippe";
        
        ChungasRevengeDisplay *christoph = [prototype clone];
        christoph.name  = @"Christoph";
        
        ChungasRevengeDisplay *eduardo = [prototype clone];
        eduardo.name  = @"Eduardo";
        
        
    }
    return 0;
}
