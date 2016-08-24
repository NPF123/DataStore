//
//  Stock.m
//  Observer
//
//  Created by 伟明 毕 on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Stock.h"

static Stock *_stock = nil;

@implementation Stock

- (instancetype)init {
    if (self = [super init]) {
        _observers = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (Stock *)sharedStock {
    if (_stock == nil) {
        @synchronized(self) {
            if (_stock == nil) {
                _stock = [[Stock alloc] init];
            }
        }
    }
    
    return _stock;
}

- (void)addObserver:(NSObject<StockObserver> *)observer {
    [_observers addObject:observer];
}

- (void)removeObserver:(NSObject<StockObserver> *)observer {
    [_observers addObject:observer];
}

- (void)notifyWithType:(NSString *)notifyType {
    for (NSObject <StockObserver> *observer in _observers) {
        [observer receiveNotify:notifyType];
    }
}

@end
