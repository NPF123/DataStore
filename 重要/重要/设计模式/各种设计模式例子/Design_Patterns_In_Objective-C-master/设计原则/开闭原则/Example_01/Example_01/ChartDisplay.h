//
//  ChartDisplay.h
//  Example_01
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 如果需要增加一个新的图表类，如折线图LineChart，则需要修改该类的displayWithChartType:方法的源代码，增加新的判断逻辑，违反了开闭原则。
 */
@interface ChartDisplay : NSObject

+ (void)displayWithChartType:(NSString *)chartType;

@end
