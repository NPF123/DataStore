//
//  AuthorizedState.m
//  Example_03
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "AuthorizedState.h"

@implementation AuthorizedState

- (instancetype)initWithUserId:(NSString *)userId
{
    if (self = [super init]) {
        _userId = userId;
    }
    return self;
}

- (BOOL)isAuthorizedWithContext:(Context *)context
{
    return YES;
}

- (NSString *)userIdOfContext:(Context *)context
{
    return self.userId;
}

@end
