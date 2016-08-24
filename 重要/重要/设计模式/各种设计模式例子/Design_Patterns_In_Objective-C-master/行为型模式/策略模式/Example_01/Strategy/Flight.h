//
//  Flight.h
//  Strategy
//
//  Created by btw on 15/3/9.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Flight <NSObject>

- (NSString *)flightDescription;

@end

/**
 *  飞行特征
 */
@interface Flight : NSObject

@end
