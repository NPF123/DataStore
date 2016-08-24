//
//  Finery.h
//  Example_02
//
//  Created by 伟明 毕 on 15/3/20.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Person.h"
/**
 *  装饰模式的核心——装饰类，通过set component方法和覆写目标类方法实现附加装饰
 */
@interface Finery : Person {
    Person *_component;
}

- (void)setDecorate:(Person *)component;

@end
