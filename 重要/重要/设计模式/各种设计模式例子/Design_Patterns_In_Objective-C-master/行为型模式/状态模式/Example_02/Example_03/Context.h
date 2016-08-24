//
//  Context.h
//  Example_03
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnauthorizedState.h"

@interface Context : NSObject
{
    @private
    id<State> _state;
}

@property (assign, nonatomic, readonly, getter=isAuthorized) BOOL authorized;

@property (strong, nonatomic, readonly) NSString *userId;

- (void)changeStateToAuthorizedWithUserId:(NSString *)userId;

- (void)changeStateToUnauthorized;

@end
