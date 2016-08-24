//
//  CustomerDAO.m
//  Example_01
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "CustomerDAO.h"
#import "TXTDataConvertor.h"
#import "ExcelDataConvertor.h"

@implementation CustomerDAO

- (void)addCustomers {
    TXTDataConvertor *convertor = [[TXTDataConvertor alloc] init];
    [convertor converse];
}

@end
