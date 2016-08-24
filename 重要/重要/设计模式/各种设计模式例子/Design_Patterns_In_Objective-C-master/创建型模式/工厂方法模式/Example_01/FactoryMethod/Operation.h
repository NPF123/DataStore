//
//  Operation.h
//  FactoryMethod
//
//  Created by btw on 15/3/9.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Operation <NSObject>

- (double)getResult;

@end

@interface Operation : NSObject

@property (assign, nonatomic) double op1;
@property (assign, nonatomic) double op2;

@end
