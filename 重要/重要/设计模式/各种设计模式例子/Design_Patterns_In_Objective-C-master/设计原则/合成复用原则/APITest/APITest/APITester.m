//
//  APITester.m
//  APITest
//
//  Created by btw on 15/3/24.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "APITester.h"

@implementation APITester

- (instancetype)initWithURLString:(NSString *)URLString parameters:(NSDictionary *)parameters methodType:(APITesterHTTPMethodType)methodType {
    if (self = [super init]) {
        self.URLString = URLString;
        self.parameters = parameters;
        self.methodType = methodType;
        self.cachePolicy = APITesterRequestUseProtocolCachePolicy;
        self.timeOut = 10.0f;
    }
    return self;
}

@end
