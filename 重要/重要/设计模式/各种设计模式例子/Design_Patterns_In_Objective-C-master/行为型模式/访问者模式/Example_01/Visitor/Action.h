//
//  Action.h
//  Visitor
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Man;
@class Woman;

@protocol Action <NSObject>

- (void)getManConclusion:(Man *)man;
- (void)getWomanConclusion:(Woman *)woman;

@end

@interface Action : NSObject

@end
