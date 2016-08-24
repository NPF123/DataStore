//
//  Visitor.h
//  Example_03
//
//  Created by 找塑料 on 16/5/3.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PersonalCustomer;
@class EnterpriseCustomer;

@protocol Visitor <NSObject>

/**
 *  访问企业客户，相当于给企业客户添加访问者的功能
 *
 *  @param ec 企业客户的对象
 */
- (void)visitEnterpriseCustomer:(EnterpriseCustomer *)ec;

/**
 *  访问个人客户，相当于给个人客户添加访问者的功能
 *
 *  @param pc 个人客户的对象
 */
- (void)visitPersonalCustomer:(PersonalCustomer *)pc;

@end

/**
 *  访问者抽象类
 */
@interface Visitor : NSObject

@end
