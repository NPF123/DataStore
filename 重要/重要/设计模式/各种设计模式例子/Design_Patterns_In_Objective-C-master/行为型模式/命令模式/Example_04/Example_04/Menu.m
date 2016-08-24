//
//  Menu.m
//  Example_04
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Menu.h"
#import "MenuItem.h"

@implementation Menu

- (instancetype)init {
    if (self = [super init]) {
        _menuItemArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addItem:(MenuItem *)menuItem {
    [_menuItemArray addObject:menuItem];
}
- (void)removeItem:(MenuItem *)menuItem {
    [_menuItemArray removeObject:menuItem];
}
- (void)display {
    [_menuItemArray enumerateObjectsUsingBlock:^(MenuItem* menuItem, NSUInteger idx, BOOL *stop) {
        NSLog(@"%lu <-> %@", idx, menuItem);
    }];
}
- (void)clickItemOfIndex:(int)index {
    MenuItem *item = [_menuItemArray objectAtIndex:index];
    [item onClick];
}

@end
