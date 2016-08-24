//
//  GameState.m
//  Example_02
//
//  Created by 找塑料 on 16/4/22.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "GameState.h"

@implementation GameState


- (Memento *)toMemento
{
    return @{
             DPMementoKeyChapter:_chapter,
             DPMementoKeyWeapon:_weapon
             };
}

- (void)restoreFromMemento:(Memento *)memento
{
    _chapter = memento[DPMementoKeyChapter] ? : @"n/a";
    _weapon = memento[DPMementoKeyWeapon] ? : @"n/a";
}

@end
