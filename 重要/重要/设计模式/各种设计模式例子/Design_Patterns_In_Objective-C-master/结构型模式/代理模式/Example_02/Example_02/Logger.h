//
//  Logger.h
//  Example_02
//
//  Created by Bi Weiming on 15/7/2.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 日志记录类，业务类，它提供方法-logWithUserID:来保存日志。 */
@interface Logger : NSObject

- (void)logWithUserID:(NSString *)userID;

@end
