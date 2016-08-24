//
//  ConcreteIterator.m
//  Example_01
//
//  Created by btw on 15/3/20.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "ConcreteIterator.h"

@implementation ConcreteIterator

- (instancetype)init {
    if (self = [super init]) {
        _current = -1;
    }
    return self;
}

- (instancetype)initWithArray:(NSArray *)array {
    if (self = [self init]) {
        _array = array;
    }
    return self;
}

- (id)first {
    return _array[0];
}

-  (id)nextObject {
    id ret = nil;
    _current ++;
    if (_current < _array.count) {
        ret = _array[_current];
    }
    return ret;
}

- (id)currentItem {
    return _array[_current];
}

- (BOOL)isDone {
    if (_current >= _array.count) {
        return YES;
    }
    
    return NO;
}

@end
