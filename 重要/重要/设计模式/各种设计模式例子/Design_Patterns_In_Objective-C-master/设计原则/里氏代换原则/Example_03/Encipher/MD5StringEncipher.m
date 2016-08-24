//
//  MD5StringEncipher.m
//  Encipher
//
//  Created by btw on 15/3/17.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "MD5StringEncipher.h"
#import <CommonCrypto/CommonDigest.h>

@implementation MD5StringEncipher

- (NSString *)getEncryptionResult {
    const char *cStr = [self.sourceCode UTF8String];
    unsigned char digest[16];
    CC_MD5( cStr, strlen(cStr), digest ); // This is the md5 call
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return  output;
}

@end
