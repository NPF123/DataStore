//
//  CipherMachine.m
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "CipherMachine.h"
#include <CommonCrypto/CommonCrypto.h>

@implementation CipherMachine

- (instancetype)initWithOriginalContent:(NSString *)originalContent
{
    if (self = [super init]) {
        _originalContent = originalContent;
    }
    return self;
}

- (NSString *)encrypt
{
    NSData *data = [_originalContent dataUsingEncoding:NSUTF8StringEncoding];
    
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(data.bytes, (CC_LONG)data.length, result);
    
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

@end
