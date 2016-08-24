//
//  ATM.h
//  Example_05
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MoneyPile.h"

@interface ATM : NSObject

- (nonnull instancetype)initWithHundred:(MoneyPile * _Nonnull)hundred
                                  fifty:(MoneyPile * _Nonnull)fifty
                                 twenty:(MoneyPile * _Nonnull)twenty
                                    ten:(MoneyPile * _Nonnull)ten;

- (nonnull NSString *)canWithdraw:(NSInteger)value;

@end
