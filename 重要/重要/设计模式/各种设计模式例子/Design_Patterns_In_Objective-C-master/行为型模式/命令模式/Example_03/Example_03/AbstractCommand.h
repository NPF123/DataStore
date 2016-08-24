//
//  AbstractCommand.h
//  Example_03
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AbstractCommand <NSObject>

- (float)execute;
- (float)undo;

@end

@interface AbstractCommand : NSObject

@property (assign, nonatomic) float value;

- (instancetype)initWithValue:(float)value;


@end
