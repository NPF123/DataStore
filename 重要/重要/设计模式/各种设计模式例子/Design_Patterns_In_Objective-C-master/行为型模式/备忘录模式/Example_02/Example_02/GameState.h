//
//  GameState.h
//  Example_02
//
//  Created by 找塑料 on 16/4/22.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSDictionary<NSObject *,id> Memento;

static NSString * const DPMementoKeyChapter = @"com.valve.halflife.chapter";
static NSString * const DPMementoKeyWeapon = @"com.valve.halflife.weapon";
static NSString * const DPMementoGameState = @"com.valve.halflife.state";

@interface GameState : NSObject

@property (strong, nonatomic) NSString *chapter;
@property (strong, nonatomic) NSString *weapon;

- (Memento *)toMemento;

- (void)restoreFromMemento:(Memento *)memento;

@end
