//
//  TakeOff.h
//  Strategy
//
//  Created by btw on 15/3/9.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TakeOff <NSObject>

- (NSString *)takeOffDescription;

@end

/**
 *  起飞特征
 */
@interface TakeOff : NSObject

@end
