//
//  LoggerFactory.m
//  Example_02
//
//  Created by Bi Weiming on 15/6/27.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "LoggerFactory.h"

@interface LoggerFactory() <LoggerFactory>

@end

@implementation LoggerFactory

- (void)writeLog {
    id<Logger> logger = [self createLogger];
    [logger writeLog];
}

- (id<Logger>)createLogger {
    return nil;
}

- (id<Logger>)createLoggerWithArgs:(NSString *)args {
    return nil;
}

- (id<Logger>)createLoggerWithObj:(id)obj {
    return nil;
}

@end