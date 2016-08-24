//
//  main.m
//  State
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//
/**
 *  状态模式，当一个对象的内在状态改变时允许改变其行为，这个对象看起来像是改变了其类。
 *  状态模式主要解决的是当控制一个对象状态转换的条件表达式过于复杂时的情况。把状态的判断逻辑转移到表达不同状态的一系列类当中，可以把复杂的判断逻辑简化。
 *  面向对象设计其实就是希望做到代码的责任分解——单一职责原则
 *  当一个对象的行为取决于它的状态，并且它必须在运行时刻根据状态的改变它的行为时，即可使用状态模式
 *  状态模式通过把各种状态转移逻辑分不到State子类之间，减少相互间的依赖。
 */
#import <Foundation/Foundation.h>
#import "Work.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Work *work = [[Work alloc] init];
        work.hour = 12;
        [work writeProgram];
        
        work.hour = 19;
        [work writeProgram];
        
        work.hour = 1;
        [work writeProgram];
        
        work.hour = 25;
        [work writeProgram];
        
        /*
        // 不使用状态模式的时候，需要大量判断语句，这些判断语句还有可能是上百条，难维护，代码变得很长，改一处，可能会牵及很多Bug。
        if (work.hour >=6 && work.hour < 12) {
            NSLog(@"早上状态");
        } else if (work.hour>=12 && work.hour <14) {
            NSLog(@"中午状态");
        } else if (work.hour >=14 && work.hour <18) {
            NSLog(@"下午状态");
        } else if (work.hour >= 18 && work.hour < 24) {
            NSLog(@"晚上状态");
        } else if (work.hour == 24 || (work.hour>0 && work.hour < 6)) {
            NSLog(@"深夜状态");
        } else {
            NSLog(@"未知状态");
        }
         */
    }
    return 0;
}
