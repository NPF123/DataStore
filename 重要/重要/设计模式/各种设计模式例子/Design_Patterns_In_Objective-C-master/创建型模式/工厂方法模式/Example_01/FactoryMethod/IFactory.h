//
//  IFactory.h
//  FactoryMethod
//
//  Created by btw on 15/3/9.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Operation;
@protocol Operation;

@protocol IFactory <NSObject>

- (Operation <Operation> *)createOperation;

@end

@interface IFactory : NSObject

@end
