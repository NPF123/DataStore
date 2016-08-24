//
//  ShiftAlphaEncrypt.m
//  Example_03
//
//  Created by Bi Weiming on 15/5/5.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "ShiftAlphaEncrypt.h"

@implementation ShiftAlphaEncrypt

- (NSString *)encrypting {
    NSString *encryptingStr = [super encrypting];
    NSMutableArray *arr = [NSMutableArray new];
    for (int i = 0; i<encryptingStr.length; i++) {
        NSString *s = [encryptingStr substringWithRange:NSMakeRange(i, 1)];
        const char *c = [s UTF8String];
        char thec = c[0];
        thec -= 1;
        
        [arr addObject:[NSString stringWithFormat:@"%c", thec]];
    }
    
    encryptingStr = [arr componentsJoinedByString:@""];
    
    NSLog(@"执行字母移位加密运算:%@", encryptingStr);
    
    return encryptingStr;
}

@end
