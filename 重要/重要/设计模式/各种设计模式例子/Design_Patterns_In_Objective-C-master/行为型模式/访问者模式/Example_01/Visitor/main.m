//
//  main.m
//  Visitor
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 访问者模式：表示一个作用于某对象结构中的各元素的操作。它使你可以在不改变元素的类的前提下定义作用于这些元素的新操作。
 适用：数据结构相对稳定的系统，它把数据结构和作用于结构上的操作之间的耦合解脱开，使得操作集合可以相对地自由地演变。
 目的：把处理从数据结构分离出来。
 优点：增加新的操作非常容易，因为增加新的操作就意味着增加一个新的访问者。访问者模式将有关的行为集中到一个访问者对象中。
 缺点：增加新的数据结构变得困难了。
 */

#import "ObjectStructure.h"
#import "Success.h"
#import "Man.h"
#import "Woman.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person <Person> *man = [[Man alloc] init];
        Person <Person> *woman = [[Woman alloc] init];
        ObjectStructure *o = [[ObjectStructure alloc] init];
        [o add:man];
        [o add:woman];
        
        Action <Action> *success = [[Success alloc] init];
        [o display:success];
    }
    return 0;
}
