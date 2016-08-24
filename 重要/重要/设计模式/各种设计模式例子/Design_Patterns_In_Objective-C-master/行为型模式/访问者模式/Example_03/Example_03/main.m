//
//  main.m
//  Example_03
//
//  Created by 找塑料 on 16/5/3.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectStructure.h"

// Customer
#import "EnterpriseCustomer.h"
#import "PersonalCustomer.h"

// Visitor
#import "ServiceRequestVisitor.h"
#import "PredilectionAnalyzeVisitor.h"

// 访问者模式的本质：预留通道，回调实现。

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ObjectStructure *os = [[ObjectStructure alloc] init];
        
        // 准备一些测试数据，创建客户对象，并加入ObjectStructure
        
        Customer<Customer> *cm1 = [[EnterpriseCustomer alloc] init];
        cm1.name = @"ABC集团";
        [os addElement:cm1];
        
        Customer<Customer> *cm2 = [[EnterpriseCustomer alloc] init];
        cm2.name = @"CDE公司";
        [os addElement:cm2];
        
        Customer<Customer> *cm3 = [[PersonalCustomer alloc] init];
        cm3.name = @"张三";
        [os addElement:cm3];
        
        // 客户提出服务请求，传入服务请求的Visitor
        ServiceRequestVisitor *srVisitor = [[ServiceRequestVisitor alloc] init];
        [os handleRequest:srVisitor];
        
        // 要对客户进行偏好分析，传入偏好分析的Visitor
        PredilectionAnalyzeVisitor *paVisitor = [[PredilectionAnalyzeVisitor alloc] init];
        [os handleRequest:paVisitor];
        
    }
    return 0;
}
