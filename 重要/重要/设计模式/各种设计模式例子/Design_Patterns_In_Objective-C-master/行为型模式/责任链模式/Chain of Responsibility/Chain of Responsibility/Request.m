//
//  Request.m
//  Chain of Responsibility
//
//  Created by 伟明 毕 on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Request.h"

@implementation Request

- (instancetype)initWithRequestType:(RequestType)requestType content:(NSString *)content amount:(unsigned int)amount {
    if (self = [super init]) {
        self.requestType = requestType;
        self.content = content;
        self.amount = amount;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"请求请病假%u天，原因:%@", self.amount, self.content];
}

@end
