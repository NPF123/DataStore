//
//  FileReader.h
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>

// 文件读取类，充当子系统类。
@interface FileReader : NSObject

@property (strong, nonatomic) NSString *path;

- (instancetype)initWithPath:(NSString *)path;

- (NSString *)readFile;

@end
