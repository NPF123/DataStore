//
//  Method.h
//  Example_02
//
//  Created by 找塑料 on 16/4/27.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Method <NSObject>

/**
 *  发送一条消息
 *
 *  @param userName 用户名
 *  @param message  消息
 */
- (void)sendeMessageWithUserName:(NSString *)userName message:(NSString *)message;

@end

@interface Method : NSObject


@end
