//
//  ConcreteIteratorDesc.h
//  Example_01
//
//  Created by btw on 15/3/20.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "Iterator.h"

@interface ConcreteIteratorDesc : Iterator <Iterator> {
    @private
    NSArray *_array;
    int _current;
}
- (instancetype)initWithArray:(NSArray *)array;

@end
