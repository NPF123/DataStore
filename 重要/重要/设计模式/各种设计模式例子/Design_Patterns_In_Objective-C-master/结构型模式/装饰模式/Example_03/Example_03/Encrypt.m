//
//  Encrypt.m
//  Example_03
//
//  Created by Bi Weiming on 15/5/5.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "Encrypt.h"

@implementation Encrypt

- (void)setEncrypt:(id<EncryptProtocol>)encrypt {
    _encrypt = encrypt;
}

- (NSString *)encrypting {
    if (_encrypt != nil) {
        return [_encrypt encrypting];
    }
    
    return nil;
}

@end
