//
//  main.m
//  Memento
//
//  Created by 伟明 毕 on 15/2/25.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Role.h"
#import "Caretaker.h"

/**
 * 备忘录模式：在不破坏封装性的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。这样以后就可将该对象恢复到原先保存的状态。
 * 要保存的细节封装在Memento中，哪一天要更改保存的细节也不用影响到客户端
 * 该模式比较适用于功能比较复杂的，但需要维护或记录属性历史的类，或者需要被保存的属性只是众多属性中的一部分时适用。
 * 使用备忘录模式可以把复杂的对象内部信息对其他的对象屏蔽起来。
 * 当角色的状态改变的时候，有可能这个状态无效，这时候就可以使用暂时储存起来的备忘录将状态复原。
 * Originator ｜ Memento ｜ Caretaker
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Caretaker *caretaker = [[Caretaker alloc] init];
       
        Role *role = [[Role alloc] init];
        NSLog(@"... 刚开局 ... 满血状态");
        [role initState];
        [role printState];
        
        // 打BOSS前先保存一下状态
        caretaker.memento1 = [role createMementoState];
        
        NSLog(@"... 打BOSS ... 死亡状态");
        [role deadState];
        [role printState];
        
        // 恢复打BOSS前的状态
        [role recoverStateWithMemento:caretaker.memento1];
        NSLog(@"恢复打BOSS前的状态");
        [role printState];
    }
    return 0;
}
