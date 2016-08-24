//
//  AuthorizedState.h
//  Example_03
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

@interface AuthorizedState : NSObject <State>

@property (strong, nonatomic) NSString *userId;

- (instancetype)initWithUserId:(NSString *)userId;

@end
