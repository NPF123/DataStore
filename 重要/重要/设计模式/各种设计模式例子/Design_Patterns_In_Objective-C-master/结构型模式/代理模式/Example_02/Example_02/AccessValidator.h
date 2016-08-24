//
//  AccessValidator.h
//  Example_02
//
//  Created by Bi Weiming on 15/7/2.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import <Foundation/Foundation.h>

/** AccessValidator：身份验证类，业务类，它提供方法-validateWithUserID:来实现身份验证。 */
@interface AccessValidator : NSObject

//模拟实现登录验证 
- (BOOL)validateWithUserID:(NSString *)userID;

@end
