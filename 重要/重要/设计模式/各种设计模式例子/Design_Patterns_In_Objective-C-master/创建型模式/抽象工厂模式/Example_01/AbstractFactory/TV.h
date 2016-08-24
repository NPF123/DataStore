//
//  TV.h
//  AbstractFactory
//
//  Created by btw on 15/2/28.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TV <NSObject>

- (void)print;

@end

@interface TV : NSObject

@property (strong, nonatomic) NSString *TVName;
@property (assign, nonatomic) float price;

- (instancetype)initWithTVName:(NSString *)TVName price:(float)price;

@end
