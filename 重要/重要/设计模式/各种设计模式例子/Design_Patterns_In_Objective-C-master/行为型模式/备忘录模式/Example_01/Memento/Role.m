//
//  Role.m
//  Memento
//
//  Created by 伟明 毕 on 15/2/25.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Role.h"
#import "Memento.h"

@implementation Role

- (void)deadState {
    _vit = 0;
    _attack = 0;
    _defense = 0;
}

- (void)initState {
    _vit = 100;
    _attack = 100;
    _defense = 100;
}

- (void)printState {
    NSLog(@"生命值：%u 攻击力：%u 防守力：%u", _vit, _attack, _defense);
}

- (Memento *)createMementoState {
    Memento *memento = [[Memento alloc] init];
    memento.attack = _attack;
    memento.defense = _defense;
    memento.vit = _vit;
    return memento;
}

- (void)recoverStateWithMemento:(Memento *)memento {
    _attack = memento.attack;
    _defense = memento.defense;
    _vit = memento.vit;
}

@end
