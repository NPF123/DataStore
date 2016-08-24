//
//  UnauthorizedState.m
//  Example_03
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "UnauthorizedState.h"

@implementation UnauthorizedState

- (BOOL)isAuthorizedWithContext:(Context *)context
{
    return NO;
}

- (NSString *)userIdOfContext:(Context *)context
{
    return nil;
}

@end
