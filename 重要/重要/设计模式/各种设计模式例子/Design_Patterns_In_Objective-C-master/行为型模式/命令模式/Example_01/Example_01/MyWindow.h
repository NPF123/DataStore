//
//  MyWindow.h
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Button;

@interface MyWindow : NSObject {
    NSMutableArray *_settingButtonArray;
}

@property (strong, nonatomic) NSString *windowName;

- (instancetype)initWithWindowName:(NSString *)windowName;

- (void)addButton:(Button *)button;
- (void)removeButton:(Button *)button;

- (void)display;

@end
