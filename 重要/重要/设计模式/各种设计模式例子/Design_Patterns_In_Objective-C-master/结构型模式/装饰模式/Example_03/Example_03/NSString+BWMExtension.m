//
//  NSString+BWMExtension.m
//  Example_03
//
//  Created by Bi Weiming on 15/5/5.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "NSString+BWMExtension.h"


@implementation NSString (BWMExtension)

- (NSString *)encrypting {
    NSLog(@"执行加密操作了哦!");
    NSLog(@"原始字符串:%@", self);
    return self;
}

@end
