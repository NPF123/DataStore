//
//  DatabaseLoggerFactory.m
//  Example_02
//
//  Created by Bi Weiming on 15/6/27.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "DatabaseLoggerFactory.h"
#import "DatabaseLogger.h"

@implementation DatabaseLoggerFactory

- (id<Logger>)createLogger {
    return [[DatabaseLogger alloc] init];
}

- (id<Logger>)createLoggerWithArgs:(NSString *)args {
    id<Logger> logger = [[DatabaseLogger alloc] init];
    // 配置参数
    return logger;
}

- (id<Logger>)createLoggerWithObj:(id)obj {
    id<Logger> logger = [[DatabaseLogger alloc] init];
    // 配置参数
    return logger;
}

@end
