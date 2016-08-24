//
//  CurrencyFactory.h
//  Example_03
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"
#import "Euro.h"
#import "UnitedStatesDolar.h"

@interface CurrencyFactory : NSObject

+ (id<Currency>)currencyForCountry:(Country)country;

@end
