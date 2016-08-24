//
//  PersonalCustomer.m
//  Example_03
//
//  Created by 找塑料 on 16/5/3.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "PersonalCustomer.h"
#import "Visitor.h"

@implementation PersonalCustomer

- (void)acceptVisitor:(Visitor<Visitor> *)visitor
{
    // 实现功能
    
    [visitor visitPersonalCustomer:self];
}

@end
