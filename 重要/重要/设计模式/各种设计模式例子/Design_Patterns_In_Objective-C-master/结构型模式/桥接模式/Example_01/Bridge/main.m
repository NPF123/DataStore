//
//  main.m
//  Bridge
//
//  Created by btw on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 继承的缺点：
    对象的继承关系是在编译时就定义好了，所以无法在运行时改变从父类继承的实现。
    子类的实现与它的父类有非常紧密的依赖关系，以至于父类实现中的任何变化必然会导致子类发生变化。
    当你需要复用子类时，如果继承下来的实现不适合解决新问题，则父类必须重写或被其他更适合的类替换。
    这种依赖关系限制了灵活性并最终限制了复用性。

 合成/聚合复用原则
    合成/聚合复用原则：尽量使用合成/聚合，尽量不要使用类继承。
    聚合：表示一种弱的“拥有”关系，体现A对象可以包含B对象，但B对象不是A对象的一部分。
    合成：表示一种强的“拥有”关系，体现了严格的部分和整体的关系，部分和整体的生命周期一样。
    优先使用对象的合成/聚合将有助于你保持每个类被封装，并被集中在单个任务上。
    这样类和类继承层次会保持较小规模，并且不可能增长为不可控制的庞然大物。
 
 桥接模式：
    将抽象部分与它的实现部分分离，使它们都可以独立变化。
    并不是说抽象类与其派生类分离，因为这没有意义。实现指的是抽象类和它的派生类用来实现自己的对象。
    实现系统可能多角度分类，每一种分类都有可能变化，那么就把这种多角度分离出来，让它们独立变化，减少他们之间的耦合。
 */

#import "QQMusic.h"
#import "Samsung.h"
#import "Nokia.h"
#import "QQZone.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        HandsetSoft <HandsetSoft> *soft_QQMusic =  [[QQMusic alloc] init];
        HandsetSoft <HandsetSoft> *soft_QQZone = [[QQZone alloc] init];
        HandsetBrand <HandsetBrand> *brand_samsung = [[Samsung alloc] init];
        HandsetBrand <HandsetBrand> *brand_nokia = [[Nokia alloc] init];
        
        brand_samsung.soft = soft_QQMusic;
        [brand_samsung run];
        
        NSLog(@"---------------");
        
        brand_nokia.soft = soft_QQZone;
        [brand_nokia run];
    }
    return 0;
}
