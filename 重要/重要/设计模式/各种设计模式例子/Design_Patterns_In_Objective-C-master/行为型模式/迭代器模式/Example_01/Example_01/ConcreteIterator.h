//
//  ConcreteIterator.h
//  Example_01
//
//  Created by btw on 15/3/20.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "Iterator.h"

/**
 *  具体迭代器类，继承Iterator
 */
@interface ConcreteIterator : Iterator <Iterator> {
    @private
    NSArray *_array;
    int _current;
}

- (instancetype)initWithArray:(NSArray *)array;

@end
