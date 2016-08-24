//
//  CustomerDataDisplay.h
//  Example_01
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 Sunny软件公司开发人员针对某CRM系统的客户数据显示模块设计了如图1所示接口，其中方法dataRead()用于从文件中读取数据，方法transformToXML()用于将数据转换成XML格式，方法createChart()用于创建图表，方法displayChart()用于显示图表，方法createReport()用于创建文字报表，方法displayReport()用于显示文字报表。
 
 在实际使用过程中发现该接口很不灵活，例如如果一个具体的数据显示类无须进行数据转换（源文件本身就是XML格式），但由于实现了该接口，将不得不实现其中声明的transformToXML()方法（至少需要提供一个空实现）；如果需要创建和显示图表，除了需实现与图表相关的方法外，还需要实现创建和显示文字报表的方法，否则程序编译时将报错。
 */

@protocol CustomerDataDisplay <NSObject>

- (void)dataRead;
- (void)transformToXML;
- (void)createChart;
- (void)displayChart;
- (void)createReport;
- (void)displayReport;

@end
