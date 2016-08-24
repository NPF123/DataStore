//
//  PigCard.h
//  Example_03
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  猪牌
 */
@interface Card : NSObject

@property (strong, nonatomic) NSString *cardName;
@property (assign, nonatomic) int index;

- (instancetype)initWithCardName:(NSString *)cardName;

@end
