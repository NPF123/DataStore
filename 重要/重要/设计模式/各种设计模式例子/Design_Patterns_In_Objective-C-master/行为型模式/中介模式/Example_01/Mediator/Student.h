//
//  Student.h
//  Mediator
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Mediator;
@protocol Mediator;

@protocol Student <NSObject>

- (void)sendMessage:(NSString *)message;
- (void)receiveMessage:(NSString *)message;

@end

@interface Student : NSObject
{
    @protected
    Mediator <Mediator> *_mediator;
    NSString *_name;
}

- (instancetype)initWithName:(NSString *)name mediator:(Mediator <Mediator> *)mediator;

@end
