//
//  main.m
//  Example_02
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PieChart.h"
#import "BarChart.h"
#import "LineChart.h"
#import "DisplayChart.h"

/**
 我们引入了抽象图表类AbstractChart，且ChartDisplay针对抽象图表类进行编程，并通过setChart:方法由客户端来设置实例化的具体图表对象，在ChartDisplay的display方法中调用chart对象的display()方法显示图表。
 如果需要增加一种新的图表，如折线图LineChart，只需要将LineChart也作为AbstractChart的子类，在客户端向ChartDisplay中注入一个LineChart对象即可，无须修改现有类库的源代码。
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AbstractChart<AbstractChart> *chart = [[PieChart alloc] init];
//        AbstractChart<AbstractChart> *chart = [[BarChart alloc] init];
//        AbstractChart<AbstractChart> *chart = [[LineChart alloc] init];
        
        DisplayChart *displayChart = [[DisplayChart alloc] init];
        [displayChart setChart:chart];
    
        [displayChart display];
    }
    return 0;
}
