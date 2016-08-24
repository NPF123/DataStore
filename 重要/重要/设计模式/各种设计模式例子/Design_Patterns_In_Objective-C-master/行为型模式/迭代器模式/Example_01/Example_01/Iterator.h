//
//  Iterator.h
//  Example_01
//
//  Created by btw on 15/3/20.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

/** Iterator迭代器抽象类，迭代器模式的关键 */

@protocol Iterator <NSObject>

// 第一个
- (id)first;
// 下一个
- (id)nextObject;
// 是否结束
- (BOOL)isDone;
// 当前对象
- (id)currentItem;

@end
@interface Iterator : NSObject

@end
