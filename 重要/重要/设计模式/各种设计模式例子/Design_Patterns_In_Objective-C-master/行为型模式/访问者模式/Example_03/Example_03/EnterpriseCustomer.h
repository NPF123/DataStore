//
//  EnterpriseCustomer.h
//  Example_03
//
//  Created by 找塑料 on 16/5/3.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "Customer.h"

@interface EnterpriseCustomer : Customer <Customer>

@property (strong, nonatomic) NSString *linkMan;

@property (strong, nonatomic) NSString *linkTelephone;

@property (strong, nonatomic) NSString *registerAddress;

@end
