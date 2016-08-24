//
//  FileReader.m
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "FileReader.h"

@implementation FileReader

- (instancetype)initWithPath:(NSString *)path
{
    if (self = [super init]) {
        _path = path;
    }
    return self;
}

- (NSString *)readFile
{
    if(![[NSFileManager defaultManager] fileExistsAtPath:_path]) return nil;
    
    NSError *err = nil;
    NSString *content = [NSString stringWithContentsOfFile:_path encoding:NSUTF8StringEncoding error:&err];
    if (err) {
        NSAssert(NO, @"Read File Error");
    }
    
    return content;
}

@end
