//
//  EnterpriseCustomer.m
//  Example_03
//
//  Created by 找塑料 on 16/5/3.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "EnterpriseCustomer.h"
#import "Visitor.h"

@implementation EnterpriseCustomer

- (void)acceptVisitor:(Visitor<Visitor> *)visitor
{
    // 实现某些功能
    
    [visitor visitEnterpriseCustomer:self];
}

@end
