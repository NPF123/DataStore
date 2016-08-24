//
//  Caretaker.m
//  Memento
//
//  Created by 伟明 毕 on 15/2/25.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Caretaker.h"
#import "Memento.h"

@implementation Caretaker

- (void)setMemento1:(Memento *)memento {
    _memento1 = memento;
}

- (Memento *)memento1 {
    return _memento1;
}

- (void)setMemento2:(Memento *)memento {
    _memento2 = memento;
}

- (Memento *)memento2 {
    return _memento2;
}

@end
