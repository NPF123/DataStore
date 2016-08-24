//
//  Context.m
//  Example_03
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "Context.h"
#import "AuthorizedState.h"

@implementation Context

- (instancetype)init
{
    if (self = [super init]) {
        _state = [[UnauthorizedState alloc] init];
    }
    
    return self;
}

- (NSString *)userId
{
    return [_state userIdOfContext:self];
}

- (BOOL)isAuthorized
{
    return [_state isAuthorizedWithContext:self];
}

- (void)changeStateToAuthorizedWithUserId:(NSString *)userId
{
    _state = [[AuthorizedState alloc] initWithUserId:userId];
}

- (void)changeStateToUnauthorized
{
    _state = [[UnauthorizedState alloc] init];
}

@end
