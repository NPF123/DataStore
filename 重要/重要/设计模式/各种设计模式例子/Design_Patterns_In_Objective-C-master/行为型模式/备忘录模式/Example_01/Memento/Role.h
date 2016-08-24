//
//  Role.h
//  Memento
//
//  Created by 伟明 毕 on 15/2/25.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Memento;

/**
 *  游戏角色
 */
@interface Role : NSObject

/**
 *  血量
 */
@property (assign, nonatomic) unsigned int vit;

/**
 *  防守力
 */
@property (assign, nonatomic) unsigned int defense;

/**
 *  攻击力
 */
@property (assign, nonatomic) unsigned int attack;

/**
 *  初始化状态——满血
 */
- (void)initState;

/**
 *  死亡状态
 */
- (void)deadState;

/**
 *  打印状态
 */
- (void)printState;

/**
 *  创建一个备忘状态
 *
 *  @return 备忘录对象
 */
- (Memento *)createMementoState;

/**
 *  用备忘录对象恢复状态
 *
 *  @param memento 备忘录对象
 */
- (void)recoverStateWithMemento:(Memento *)memento;

@end
