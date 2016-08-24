//
//  Command.h
//  Example_04
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BoardScreen;

@protocol Command <NSObject>

- (void)execute;

@end

@interface Command : NSObject

@property (strong, nonatomic, readonly) BoardScreen *boardScreen;

@end
