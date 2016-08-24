//
//  AbstractExpression.h
//  Example_01
//
//  Created by btw on 15/3/20.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Context;

@protocol AbstractExpression <NSObject>

- (void)interpret:(Context *)context;

@end

@interface AbstractExpression : NSObject

@end
