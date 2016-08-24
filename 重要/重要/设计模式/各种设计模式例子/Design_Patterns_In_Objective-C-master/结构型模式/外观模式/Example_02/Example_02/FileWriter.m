//
//  FileWriter.m
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "FileWriter.h"

@implementation FileWriter

- (instancetype)initWithContent:(NSString *)content path:(NSString *)path
{
    if (self = [super init]) {
        _content = content;
        _path = path;
    }
    return self;
}

- (BOOL)write
{
    NSError *err = nil;
    return [_content writeToFile:_path atomically:YES encoding:NSUTF8StringEncoding error:&err];
}

@end
