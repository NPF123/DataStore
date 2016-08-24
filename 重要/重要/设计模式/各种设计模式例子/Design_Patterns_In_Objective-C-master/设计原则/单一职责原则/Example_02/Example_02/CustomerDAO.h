//
//  CustomerDAO.h
//  Example_02
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  CustomerDAO：负责操作数据库中的Customer表，包含对Customer表的增删改查等方法，如findCustomers:
 */
@interface CustomerDAO : NSObject

- (NSArray *)findCustomersWithTableName:(NSString *)tableName;

@end
