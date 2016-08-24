//
//  StringEncipher.h
//  Encipher
//
//  Created by btw on 15/3/17.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StringEncipher <NSObject>

- (NSString *)getEncryptionResult;

@end

/**
 *  字符串加密器抽象类
 */
@interface StringEncipher : NSObject

@property (strong, nonatomic) NSString *sourceCode;

- (instancetype)initWithSourceCode:(NSString *)sourceCode;

@end
