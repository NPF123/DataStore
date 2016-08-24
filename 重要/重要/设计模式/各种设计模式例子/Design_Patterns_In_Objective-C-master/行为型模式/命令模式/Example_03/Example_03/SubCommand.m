//
//  SubCommand.m
//  Example_03
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "SubCommand.h"
#import "Sub.h"

@implementation SubCommand
{
    Sub *_sub;
}

- (instancetype)init {
    if (self = [super init]) {
        _sub = [[Sub alloc] init];
    }
    return self;
}

- (float)execute {
    return [_sub subWithValue:self.value];
}

- (float)undo {
    return [_sub subWithValue: -self.value];
}


@end
