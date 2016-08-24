//
//  Fund.m
//  Facade
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Fund.h"
#import "ForeignExchange.h"
#import "NationDebt.h"
#import "Stock.h"

@implementation Fund

- (instancetype)init {
    if (self = [super init]) {
        _stock = [[Stock alloc] init];
        _nationDebt = [[NationDebt alloc] init];
        _foreignExchange = [[ForeignExchange alloc] init];
    }
    return self;
}

- (void)buyAMode {
    [_stock buyStock];
    [_nationDebt buyNationDebt];
    [_foreignExchange buyForeignExchange];
}

- (void)buyBMode {
    [_stock buyStock];
    [_nationDebt buyNationDebt];
}

- (void)buyCMode {
    [_stock buyStock];
    [_foreignExchange buyForeignExchange];
}

- (void)buyDMode {
    [_nationDebt buyNationDebt];
    [_foreignExchange buyForeignExchange];
}

- (void)buyEMode {
    [_stock buyStock];
}

- (void)buyFMode {
    [_nationDebt buyNationDebt];
}

- (void)buyGMode {
    [_foreignExchange buyForeignExchange];
}

@end
