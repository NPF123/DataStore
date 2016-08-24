//
//  Result.h
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Leave;
@class Superior;
@protocol Superior;

@interface Result : NSObject

+ (void)printSuccessfulResultWith:(Leave *)leave superior:(Superior<Superior> *)superior;

+ (void)printUnsuccessfulResultWith:(Leave *)leave;

@end
