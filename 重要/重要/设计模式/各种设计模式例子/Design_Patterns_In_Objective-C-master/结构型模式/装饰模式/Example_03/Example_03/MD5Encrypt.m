//
//  MD5Encrypt.m
//  Example_03
//
//  Created by Bi Weiming on 15/5/5.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "MD5Encrypt.h"

@implementation MD5Encrypt

- (NSString *)encrypting {
    NSString *encryptingStr = [super encrypting];
    encryptingStr = [self p_md5:encryptingStr];
    NSLog(@"执行MD5加密运算:%@", encryptingStr);
    return encryptingStr;
}

// MD5加密算法
- (NSString *)p_md5:(NSString *)str {
    const char *cStr = [str UTF8String];
    unsigned char result[32];
    CC_MD5(cStr, (uint32_t)strlen(cStr), result); // This is the md5 call
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

@end
