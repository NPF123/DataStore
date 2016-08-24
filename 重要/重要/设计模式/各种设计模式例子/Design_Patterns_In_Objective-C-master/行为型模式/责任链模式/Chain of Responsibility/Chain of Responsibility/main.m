//
//  main.m
//  Chain of Responsibility
//
//  Created by 伟明 毕 on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Chain of Responsibility
 责任链模式：使得多个对象都有机会处理请求，从而避免请求的发送者和接收者的耦合关系。将这个对象连成一条链，并沿着这条链传递该请求，直到有一个对象处理它为止。
 1、当客户提交一个请求时，请求是沿链条传递至有一个ConcreteHandler对象复杂处理它。
 2、接收者和发送者都没有对方的明确信息，且链条中的对象自己并不知道链的结构。
 3、结果是职责链可简化对象的互相连接，他们仅需要保持一个指向其后继承者的引用而不需保持它所有的候选接受者的引用。
 4、我们可以随时地增加或修改处理一个请求的结构。增强了给对象指派职责的灵活性。
 
 注意：一个请求极有可能到了链条的末端都得不到处理，或者因为没有正确配置而得不到处理。
 */

#import "Request.h"
#import "CommonManager.h"
#import "Majordomo.h"
#import "GeneralManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Request *request = [[Request alloc] initWithRequestType:RequestTypeSickLeave content:@"我要请病假！" amount:5];
        Manager <Manager> *commonManager = [[CommonManager alloc] init];
        Manager <Manager> *majordomo = [[Majordomo alloc] init];
        Manager <Manager> *generalManager = [[GeneralManager alloc] init];
        [commonManager setSuperior:majordomo];
        [majordomo setSuperior:generalManager];
        
        NSLog(@"%@", request);
        // 先从经理开始请求
        [commonManager requestApplications:request];
    }
    return 0;
}
