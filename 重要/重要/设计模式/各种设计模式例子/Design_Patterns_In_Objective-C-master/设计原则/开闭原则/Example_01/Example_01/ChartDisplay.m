//
//  ChartDisplay.m
//  Example_01
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "ChartDisplay.h"
#import "PieChart.h"
#import "BarChart.h"

@implementation ChartDisplay

+ (void)displayWithChartType:(NSString *)chartType {
    if ([chartType isEqualToString:@"pie"]) {
        PieChart *pie = [[PieChart alloc] init];
        [pie display];
    } else if ([chartType isEqualToString:@"bar"]) {
        BarChart *bar = [[BarChart alloc] init];
        [bar display];
    }
}

@end
