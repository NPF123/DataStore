//
//  PredilectionAnalyzeVisitor.m
//  Example_03
//
//  Created by 找塑料 on 16/5/3.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "PredilectionAnalyzeVisitor.h"
#import "PersonalCustomer.h"
#import "EnterpriseCustomer.h"

@implementation PredilectionAnalyzeVisitor

- (void)visitPersonalCustomer:(PersonalCustomer *)pc
{
    NSLog(@"现在对个人客户%@进行产品偏好分析", pc.name);
}

- (void)visitEnterpriseCustomer:(EnterpriseCustomer *)ec
{
     NSLog(@"现在对企业客户%@进行产品偏好分析", ec.name);
}

@end
