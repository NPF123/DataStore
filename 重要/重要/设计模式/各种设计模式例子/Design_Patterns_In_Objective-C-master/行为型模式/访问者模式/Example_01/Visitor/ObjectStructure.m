//
//  ObjectStructure.m
//  Visitor
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "ObjectStructure.h"

@implementation ObjectStructure

- (instancetype)init {
    if (self = [super init]) {
        _PersonArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)add:(Person<Person> *)person {
    [_PersonArray addObject:person];
}

- (void)remove:(Person<Person> *)person {
    [_PersonArray removeObject:person];
}

- (void)display:(Action<Action> *)visitor {
    for (Person <Person> *person in _PersonArray) {
        [person accept:visitor];
    }
}

@end
