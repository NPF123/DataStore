//
//  MyWindow.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "MyWindow.h"
#import "Button.h"

@implementation MyWindow

- (instancetype)initWithWindowName:(NSString *)windowName {
    if (self = [super init]) {
        self.windowName = windowName;
        _settingButtonArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)display {
    NSLog(@"======  %@  ======", self.windowName);
    [_settingButtonArray enumerateObjectsUsingBlock:^(Button* btn, NSUInteger index, BOOL *stop) {
        NSLog(@"------  %@  ------", btn.buttonName);
    }];
}

- (void)addButton:(Button *)button {
    if ([button isKindOfClass:Button.class]) {
        [_settingButtonArray addObject:button];
    } else {
        NSAssert(NO, @"只能添加Button类型为(Button<Button> *)！");
    }
}

- (void)removeButton:(Button *)button {
    if ([_settingButtonArray indexOfObject:button] != NSNotFound) {
        [_settingButtonArray removeObject:button];
    } else {
        NSLog(@"找不到需要删除的元素，可能还没添加。");
    }
}

@end
