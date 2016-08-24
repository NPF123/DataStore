//
//  SHA1StringEncipher.m
//  Encipher
//
//  Created by btw on 15/3/17.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "SHA1StringEncipher.h"
#import <CommonCrypto/CommonDigest.h>

@implementation SHA1StringEncipher

- (NSString *)getEncryptionResult {
    const char *cstr = [self.sourceCode cStringUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [NSData dataWithBytes:cstr length:self.sourceCode.length];
    
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(data.bytes, data.length, digest);
    
    NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return output;
}

@end
