//
//  main.m
//  Command
//
//  Created by btw on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 命令模式：将一个请求封装为一个对象，从而使你可用不同请求对客户进行参数化；对请求排队或记录请求日志，以及支持可撤销的操作。
 作用
    1、它能较容易地设计一个命令队列。
    2、在需要的情况下，可以较容易地将命令记入日志。
    3、允许接收请求的一方决定是否要否决请求。
    4、可以容易地实现对请求的撤销和重做
    5、由于加进新的具体命令类不影响其他的类，因此增加新的具体命令类很容易。
    6、命令模式把请求一个操作的对象与知道怎么执行一个操作的对象分割开来。
 
 敏捷开发原则
    1、不要为代码添加基于猜测、实际不需要的功能。
    2、如果不清楚一个系统是否需要命令模式，一般就不要急着去实现它。
    3、事实上，在需要的时候通过重构实现这个模式并不困难，只有在真正需要如撤销／恢复操作等功能时，把原来的代码重构为命令模式才有意义。
 */

#import "Barbecuer.h"
#import "Waiter.h"
#import "BakeChikenWing.h"
#import "BakeMutton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Barbecuer *barbecuer = [[Barbecuer alloc] init];
        
        Command <Command> *command_bakeChickenWing = [[BakeChikenWing alloc] initWithBarbecuer:barbecuer];
        Command <Command> *command_bakeMutton = [[BakeMutton alloc] initWithBarbecuer:barbecuer];
        
        Waiter *waiter = [[Waiter alloc] init];
        [waiter addCommand:command_bakeChickenWing];
        [waiter addCommand:command_bakeMutton];
        [waiter notify];
    }
    return 0;
}
