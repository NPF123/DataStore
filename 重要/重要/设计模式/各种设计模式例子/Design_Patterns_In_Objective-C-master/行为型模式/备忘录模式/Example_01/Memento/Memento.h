//
//  Memento.h
//  Memento
//
//  Created by 伟明 毕 on 15/2/25.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  备忘录类
 */
@interface Memento : NSObject

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


@end
