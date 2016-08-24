//
//  ConcreteIteratorDesc.m
//  Example_01
//
//  Created by btw on 15/3/20.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "ConcreteIteratorDesc.h"

@implementation ConcreteIteratorDesc

- (instancetype)initWithArray:(NSArray *)array {
    if (self = [super init]) {
        _array = array;
        _current = (int)array.count;
    }
    return self;
}

- (id)first {
    return _array[_array.count-1];
}

-  (id)nextObject {
    id ret = nil;
    _current --;
    if (_current >= 0) {
        ret = _array[_current];
    }
    return ret;
}

- (id)currentItem {
    return _array[_current];
}

- (BOOL)isDone {
    if (_current < 0) {
        return YES;
    }
    
    return NO;
}

@end
