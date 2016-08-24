//
//  Menu.h
//  Example_04
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MenuItem;

@interface Menu : NSObject
{
    NSMutableArray *_menuItemArray;
}

- (void)addItem:(MenuItem *)menuItem;

- (void)removeItem:(MenuItem *)menuItem;

- (void)display;

- (void)clickItemOfIndex:(int)index;

@end
