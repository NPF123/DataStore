//
//  Caretaker.h
//  Memento
//
//  Created by 伟明 毕 on 15/2/25.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Memento;

/**
 *  备忘录管理类
 */
@interface Caretaker : NSObject
{
    @protected
    Memento *_memento1;
    Memento *_memento2;
}

- (void)setMemento1:(Memento *)memento;
- (Memento *)memento1;

- (void)setMemento2:(Memento *)memento;
- (Memento *)memento2;

@end
