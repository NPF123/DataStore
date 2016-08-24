//
//  Work.h
//  State
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

/**
 *  工作类
 */
@interface Work : NSObject
{
    @private
    State<State> *_currentState;
}

/**
 *  当前工作钟数
 */
@property (assign, nonatomic) unsigned int hour;

/**
 *  写代码，做项目
 */
- (void)writeProgram;

/**
 *  设置状态
 *
 *  @param state 状态
 */
- (void)setState:(State <State> *)state;

@end
