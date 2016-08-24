//
//  main.m
//  Mediator
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 
 中介者模式：用一个中介对象来封装一系列的对象交互。中介者使各个对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变他们之间的交互。
 
 适用范围：
    中介者模式一般应用于一组对象以定义良好但是复杂的方式进行通信的场合，以及想定制一个分布在多个类中的行为，而又不想生成太多的子类的场合。
 优点：
    1、Mediator的出现减少了各个Colleague的耦合，使得可以独立地改变和复用各个Colleague类和Mediator。
    2、由于把对象如何协作进行了抽象，将中介作为一个独立的概念并将其封装在一个对象中，这样关注的对象就从对象各自本身的行为转移到他们之间的交互上来，也就是站在一个更宏观的角度去看待系统。
 
 缺点：
    由于ConcreteMediator控制了集中化，于是就把交互复杂性变为了中介者的复杂性，这就使得中介者会变得比任何一个ConcreteMediator都要复杂。
 
 ⚠注意：中介者模式很容易在系统中应用，也很容易在系统中误用。当系统出现了“多对多”交互复杂的对象群时，不要急于使用中介者模式，而要先反思你的系统在设计上是否合理。
 */

#import "Phone.h"
#import "Jack.h"
#import "Sam.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Mediator <Mediator> *phone = [[Phone alloc] init];
        Student <Student> *jack = [[Jack alloc] initWithName:@"Jack" mediator:phone];
        Student <Student> *sam = [[Sam alloc] initWithName:@"Sam" mediator:phone];
        [phone setStudent1:jack];
        [phone setStudent2:sam];
        
        [jack sendMessage:@"你好！"];
        [sam sendMessage:@"新年快乐"];
        
        [jack sendMessage:@"在做什么？"];
        [sam sendMessage:@"在撸啊撸呢！"];
    }
    return 0;
}
