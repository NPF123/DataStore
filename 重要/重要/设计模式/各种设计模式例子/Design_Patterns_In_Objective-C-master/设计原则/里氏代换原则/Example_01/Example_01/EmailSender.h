//
//  EmailSender.h
//  Example_01
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CommonCustomer;
@class VIPCustomer;

/**
   在对系统进行进一步分析后发现，无论是普通客户还是VIP客户，发送邮件的过程都是相同的，也就是说两个send...方法中的代码重复，而且在本系统中还将增加新类型的客户。为了让系统具有更好的扩展性，同时减少代码重复，使用里氏代换原则对其进行重构。
 */
@interface EmailSender : NSObject

- (void)sendMailWithCommonCustomer:(CommonCustomer *)customer;
- (void)sendMailWithVipCustomer:(VIPCustomer *)customer;

@end
