//
//  EmailSender.h
//  Example_02
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Customer;
@protocol Customer;

/**
 在本实例中，可以考虑增加一个新的抽象客户类Customer，而将CommonCustomer和VIPCustomer类作为其子类，邮件发送类EmailSender类针对抽象客户类Customer编程，根据里氏代换原则，能够接受基类对象的地方必然能够接受子类对象，因此将EmailSender中的send()方法的参数类型改为Customer，如果需要增加新类型的客户，只需将其作为Customer类的子类即可
 */
@interface EmailSender : NSObject

+ (void)sendWithCustomer:(Customer<Customer> *)customer;

@end
