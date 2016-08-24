//
//  ReverseEncrypt.m
//  Example_03
//
//  Created by Bi Weiming on 15/5/5.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "ReverseEncrypt.h"

@implementation ReverseEncrypt

- (NSString *)encrypting {
    NSString *encryptingStr = [super encrypting];
    NSMutableArray *arr = [NSMutableArray new];
    for (int i = (int)encryptingStr.length-1; i>=0; i--) {
        NSString *s = [encryptingStr substringWithRange:NSMakeRange(i, 1)];
        [arr addObject:s];
    }
    
    encryptingStr = [arr componentsJoinedByString:@""];
    NSLog(@"执行翻转加密运算:%@", encryptingStr);
    return [arr componentsJoinedByString:@""];
}

@end
