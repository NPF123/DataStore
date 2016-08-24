//
//  CipherMachine.h
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>

// 数据加密类，充当子系统类。
@interface CipherMachine : NSObject

@property (copy, nonatomic) NSString *originalContent;

- (instancetype)initWithOriginalContent:(NSString *)originalContent;

- (NSString *)encrypt;

@end
