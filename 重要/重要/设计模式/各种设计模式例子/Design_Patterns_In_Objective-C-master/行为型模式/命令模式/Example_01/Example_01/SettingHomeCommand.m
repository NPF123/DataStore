//
//  SettingHomeCommand.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "SettingHomeCommand.h"
#import "SettingHomeHandler.h"

@implementation SettingHomeCommand {
    SettingHomeHandler *_handler;
}

- (instancetype)init {
    if (self = [super init]) {
        _handler = [[SettingHomeHandler alloc] init];
    }
    return self;
}

- (void)execute {
    [_handler openSettingHome];
}

@end
