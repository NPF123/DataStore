//
//  ConcreteClass.h
//  Example_02
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataHandler.h"
#import "ChartHandler.h"

/**
 在使用接口隔离原则时，我们需要注意控制接口的粒度，接口不能太小，如果太小会导致系统中接口泛滥，不利于维护；
 
 接口也不能太大，太大的接口将违背接口隔离原则，灵活性较差，使用起来很不方便。
 
 一般而言，接口中仅包含为某一类用户定制的方法即可，不应该强迫客户依赖于那些它们不用的方法。
 */
@interface ConcreteClass : NSObject <DataHandler, ChartHandler>

@end
