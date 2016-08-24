//
//  DisplayChart.h
//  Example_02
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbstractChart;
@protocol AbstractChart;

@interface DisplayChart : NSObject

@property (strong, nonatomic, readwrite) AbstractChart<AbstractChart> *chart;

- (void)display;

@end
