//
//  ATM.m
//  Example_05
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "ATM.h"

@interface ATM()

@property (strong, nonatomic, nonnull) MoneyPile *hundred;
@property (strong, nonatomic, nonnull) MoneyPile *fifty;
@property (strong, nonatomic, nonnull) MoneyPile *twenty;
@property (strong, nonatomic, nonnull) MoneyPile *ten;
@property (strong, nonatomic, readonly, nonnull) MoneyPile *startPile;

@end

@implementation ATM

- (MoneyPile *)startPile
{
    return _hundred;
}

- (nonnull instancetype)initWithHundred:(MoneyPile * _Nonnull)hundred
                                  fifty:(MoneyPile * _Nonnull)fifty
                                 twenty:(MoneyPile * _Nonnull)twenty
                                    ten:(MoneyPile * _Nonnull)ten
{
    if (self = [super init]) {
        _hundred = hundred;
        _fifty = fifty;
        _twenty = twenty;
        _ten = ten;
    }
    return self;
}

- (nonnull NSString *)canWithdraw:(NSInteger)value
{    
    return [NSString stringWithFormat:@"Can withdraw: %d", [self.startPile canWithdraw:value]];
}

@end
