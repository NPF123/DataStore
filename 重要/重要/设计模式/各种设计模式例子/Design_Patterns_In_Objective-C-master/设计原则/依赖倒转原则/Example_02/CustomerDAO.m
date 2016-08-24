//
//  CustomerDAO.m
//  Example_02
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "CustomerDAO.h"
#import "DataConvertor.h"

@implementation CustomerDAO

- (void)addCustomers {
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:@"/Users/btw/Desktop/开发笔记/设计模式/设计原则/依赖倒转原则/Example_02/Example_02/Config.plist"];
    Class DataConvertorClass = NSClassFromString(dict[@"DataConvertorClass"]);
    DataConvertor<DataConvertor> *dataConvertor = [[DataConvertorClass alloc] init];
    [dataConvertor converse];
}

@end
