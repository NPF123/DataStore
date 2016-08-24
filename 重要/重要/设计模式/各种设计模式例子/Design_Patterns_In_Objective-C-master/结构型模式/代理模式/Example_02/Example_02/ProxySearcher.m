//
//  ProxySearcher.m
//  Example_02
//
//  Created by Bi Weiming on 15/7/2.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "ProxySearcher.h"
#import "RealSearcher.h"
#import "AccessValidator.h"
#import "Logger.h"

@interface ProxySearcher() {
    RealSearcher *_searcher; //维持一个对真实主题的引用
    AccessValidator *_validator;
    Logger *_logger;
}

@end

@implementation ProxySearcher

- (instancetype)init {
    if (self = [super init]) {
        _searcher = [[RealSearcher alloc] init];
    }
    return self;
}

- (NSString *)doSearchWithUserId:(NSString *)userID keyword:(NSString *)keyword {
    //如果身份验证成功，则执行查询
    if ([self validateWithUserID:userID]) {
        NSString *result = [_searcher doSearchWithUserId:userID keyword:keyword]; //调用真实主题对象的查询方法
        [self logWithUserID:userID]; //记录查询日志
        return result; //返回查询结果
    } else {
        return nil;
    }
}

- (BOOL)validateWithUserID:(NSString *)userID {
    _validator = [[AccessValidator alloc] init];
    return [_validator validateWithUserID:userID];
}

- (void)logWithUserID:(NSString *)userID {
    _logger = [[Logger alloc] init];
    [_logger logWithUserID:userID];
}

@end
