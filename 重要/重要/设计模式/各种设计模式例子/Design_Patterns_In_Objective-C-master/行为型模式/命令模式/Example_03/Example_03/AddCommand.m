//
//  AddCommand.m
//  Example_03
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "AddCommand.h"
#import "Add.h"

@implementation AddCommand
{
    Add *_add;
}

- (instancetype)init {
    if (self = [super init]) {
        _add = [[Add alloc] init];
    }
    return self;
}

- (float)execute {
    return [_add add:self.value];
}

- (float)undo {
    return [_add add:-self.value];
}

@end
