//
//  MoneyPile.m
//  Example_05
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "MoneyPile.h"

@implementation MoneyPile

- (nonnull instancetype)initWithValue:(NSInteger)value
                             quantity:(NSInteger)quantity
                             nextPile:(MoneyPile * _Nullable)nextPile
{
    if (self = [super init]) {
        _value = value;
        _quantity = quantity;
        _nextPile = nextPile;
    }
    return self;
}

- (BOOL)canWithdraw:(NSInteger)value
{
    BOOL (^canTakeSomeBill) (NSInteger) = ^BOOL(NSInteger want) {
        return (want / self.value) > 0;
    };
    
    NSInteger q = self.quantity;
    
    while (canTakeSomeBill(value)) {
        if (q == 0) {
            break;
        }
        
        value -= self.value;
        q -= 1;
    }
    
    if (value == 0) {
        return true;
    } else if (self.nextPile) {
        return [self.nextPile canWithdraw:value];
    }
    
    return false;
}

@end
