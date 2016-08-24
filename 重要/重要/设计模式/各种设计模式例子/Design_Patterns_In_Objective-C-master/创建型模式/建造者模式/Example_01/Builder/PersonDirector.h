//
//  PersonDirector.h
//  Builder
//
//  Created by 伟明 毕 on 15/2/23.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PersonBuilder.h"

@interface PersonDirector : NSObject

@property (strong, nonatomic) PersonBuilder<PersonBuilder> *builder;

/**
 *  初始化时告诉需要什么样的PersonBuilder
 *
 *  @param builder 抽象类PersonBuilder对象
 *
 *  @return PersonDirector对象
 */
- (instancetype)initWithBuilder:(PersonBuilder<PersonBuilder> *)builder;

/**
 *  建造有头有身体的
 */
- (void)createPerson;

/**
 *  抽象人，只有头部
 */
- (void)createAbstractPerson;

@end
