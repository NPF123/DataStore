//
//  Player.m
//  Adapter
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(char *)name {
    if (self = [super init]) {
        _name = (char *) malloc(strlen(name) + 1);
        strcpy(_name, name);
    }
    return self;
}

- (void)setName:(char *)name {
    if (_name != NULL) {
        free(_name);
        _name = NULL;
    }
    _name = (char *)malloc(strlen(name) + 1);
    strcpy(_name, name);
}

- (void)dealloc {
    free(_name);
    _name = NULL;
}

@end
