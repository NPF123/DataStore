//
//  Sun.h
//  Example_01
//
//  Created by btw on 15/3/16.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  太阳类 🌞 —— 世界上只有一个太阳
 */
@interface Sun : NSObject

@property (strong, nonatomic) NSString *color;
@property (strong, nonatomic) NSString *radius;

+ (Sun *)sharedSun;

@end
