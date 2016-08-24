//
//  Person.h
//  Visitor
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Action.h"

@protocol Person <NSObject>

- (void)accept:(Action <Action> *)action;

@end

@interface Person : NSObject

@end
