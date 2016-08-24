//
//  CustomerDataChar.h
//  Example_01
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 客户数据图表,不符合单一职责原则
 
 该类承担了太多的职责，既包含与数据库相关的方法，又包含与图表生成和显示相关的方法。
 如果在其他类中也需要连接数据库或者使用findCustomerWithTableName:方法查询客户信息，则难以实现代码的重用。
 无论是修改数据库连接方式还是修改图表显示方式都需要修改该类，它不止一个引起它变化的原因，违背了单一职责原则。
 */
@interface CustomerDataChart : NSObject

// 连接数据库
- (NSData *)getConnectionWithDBName:(NSString *)DBName;

// 查找用户表
- (NSArray *)findCustomerWithTableName:(NSString *)tableName;

// 创建图表
- (void)createChart;

// 显示图表
- (void)displayChart;

@end
