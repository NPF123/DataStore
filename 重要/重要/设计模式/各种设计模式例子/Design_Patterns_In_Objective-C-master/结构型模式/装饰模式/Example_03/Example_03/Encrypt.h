//
//  Encrypt.h
//  Example_03
//
//  Created by Bi Weiming on 15/5/5.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EncryptProtocol.h"

@interface Encrypt : NSObject <EncryptProtocol> {
    id<EncryptProtocol> _encrypt;
}

- (void)setEncrypt:(id<EncryptProtocol>)encrypt;

@end
