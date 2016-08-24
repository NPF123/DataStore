//
//  Stock.h
//  Observer
//
//  Created by 伟明 毕 on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StockObserver <NSObject>

- (void)receiveNotify:(NSString *)notifyType;

@end

@interface Stock : NSObject
{
    @protected
    NSMutableArray *_observers;
}

+ (Stock *)sharedStock;

- (void)addObserver:(NSObject <StockObserver> *)observer;
- (void)removeObserver:(NSObject <StockObserver> *)observer;
- (void)notifyWithType:(NSString *)notifyType;

@end
