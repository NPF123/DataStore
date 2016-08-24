//
//  FileWriter.h
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>

// 文件保存类，充当子系统类。
@interface FileWriter : NSObject

@property (strong, nonatomic) NSString *content;

@property (strong, nonatomic) NSString *path;

- (instancetype)initWithContent:(NSString *)content path:(NSString *)path;

- (BOOL)write;


@end
