//
//  Aircraft.h
//  Strategy
//
//  Created by btw on 15/3/9.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Flight;
@protocol Flight;

@class TakeOff;
@protocol TakeOff;

@interface Aircraft : NSObject

@property (strong, nonatomic) Flight<Flight> *flight;
@property (strong, nonatomic) TakeOff<TakeOff> *takeOff;

- (instancetype)initWithFlight:(Flight<Flight> *)flight takeOff:(TakeOff<TakeOff> *)takeOff;

- (void)print;

@end
