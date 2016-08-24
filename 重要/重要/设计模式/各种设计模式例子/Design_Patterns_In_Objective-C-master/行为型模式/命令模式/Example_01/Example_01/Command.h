//
//  Command.h
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Command <NSObject>

- (void)execute;

@end

@interface Command : NSObject


@end
