//
//  StringEncipher.m
//  Encipher
//
//  Created by btw on 15/3/17.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "StringEncipher.h"

@implementation StringEncipher

- (instancetype)initWithSourceCode:(NSString *)sourceCode {
    if (self = [super init]) {
        _sourceCode = sourceCode;
    }
    return self;
}

@end
