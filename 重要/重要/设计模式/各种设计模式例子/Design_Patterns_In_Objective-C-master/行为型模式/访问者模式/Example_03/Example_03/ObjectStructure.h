//
//  ObjectStructure.h
//  Example_03
//
//  Created by 找塑料 on 16/5/3.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Visitor.h"
#import "Customer.h"

/**
 *  方便操作的对象结构
 */
@interface ObjectStructure : NSObject

/**
 *  提供给客户端操作的高层接口，具体的功能由客户端传入的访问者决定
 *
 *  @param visitor 客户端需要使用的访问者
 */
- (void)handleRequest:(Visitor<Visitor> *)visitor;

/**
 *  组建对象结构，向对象结构中添加元素
 *  不同的对象结构有不同的构建方式
 *
 *  @param ele 加入到对象结构的元素
 */
- (void)addElement:(Customer <Customer> *)ele;


@end
