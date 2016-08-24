//
//  State.h
//  Example_03
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#ifndef State_h
#define State_h

@class Context;

@protocol State <NSObject>

- (BOOL)isAuthorizedWithContext:(Context *)context;

- (NSString *)userIdOfContext:(Context *)context;


@end


#endif /* State_h */
