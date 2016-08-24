//
//  Fund.h
//  Facade
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
@class NationDebt;
@class ForeignExchange;
@class Stock;

@interface Fund : NSObject
{
    @private
    Stock *_stock;
    NationDebt *_nationDebt;
    ForeignExchange *_foreignExchange;
}

- (void)buyAMode;

- (void)buyBMode;

- (void)buyCMode;

- (void)buyDMode;

- (void)buyEMode;

- (void)buyFMode;

- (void)buyGMode;

@end
