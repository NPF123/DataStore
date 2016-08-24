//
//  CurrencyFactory.m
//  Example_03
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "CurrencyFactory.h"

@implementation CurrencyFactory

+ (id<Currency>)currencyForCountry:(Country)country
{
    switch (country) {
        case CountrySpain:
        case CountryGreece:
            return [[Euro alloc] init];
            break;
            
        case CountryUnitedStates:
            return [[UnitedStatesDolar alloc] init];
            break;
            
        default:
            return nil;
            break;
    }
}

@end
