//
//  ServiceRequestVisitor.m
//  Example_03
//
//  Created by 找塑料 on 16/5/3.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "ServiceRequestVisitor.h"
#import "PersonalCustomer.h"
#import "EnterpriseCustomer.h"

@implementation ServiceRequestVisitor

- (void)visitPersonalCustomer:(PersonalCustomer *)pc
{
    NSLog(@"%@客户提出服务请求", pc.name);
}

- (void)visitEnterpriseCustomer:(EnterpriseCustomer *)ec
{
    NSLog(@"%@企业提出服务请求", ec.name);
}

@end
