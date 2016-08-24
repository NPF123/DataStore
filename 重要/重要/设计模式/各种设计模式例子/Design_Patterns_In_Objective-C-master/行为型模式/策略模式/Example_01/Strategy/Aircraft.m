//
//  Aircraft.m
//  Strategy
//
//  Created by btw on 15/3/9.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Aircraft.h"
#import "Flight.h"
#import "TakeOff.h"

@implementation Aircraft

- (instancetype)initWithFlight:(Flight<Flight> *)flight takeOff:(TakeOff<TakeOff> *)takeOff {
    if (self = [super init]) {
        self.flight = flight;
        self.takeOff = takeOff;
    }
    return self;
}

- (void)print {
    NSLog(@"'%@'的起飞特征是'%@'，飞行特征是'%@'。", self, [self.takeOff takeOffDescription], [self.flight flightDescription]);
}

@end
