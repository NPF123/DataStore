//
//  QueueButton.h
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CommandQueue;

@interface QueueButton : NSObject

@property (strong, nonatomic) CommandQueue *queue;

- (instancetype)initWithCommandQueue:(CommandQueue *)commandQueue;

- (void)call;

@end
