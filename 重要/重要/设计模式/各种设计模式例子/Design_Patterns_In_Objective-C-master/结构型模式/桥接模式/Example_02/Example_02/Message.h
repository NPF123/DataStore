//
//  Message.h
//  Example_02
//
//  Created by 找塑料 on 16/4/27.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Method.h"

@protocol Message <NSObject>

/**
 *  发送一条消息
 *
 *  @param userName 用户名
 *  @param message  消息
 */
- (void)sendeMessageWithUserName:(NSString *)userName message:(NSString *)message;

@end

@interface Message : NSObject <Message>

/** 发送的方式 */
@property (strong, nonatomic) Method <Method> *method;

/**
 *  初始化方法
 *
 *  @param method 发送的途径方式
 *
 *  @return Message对象
 */
- (instancetype)initWithMethod:(Method <Method> *)method;

@end
