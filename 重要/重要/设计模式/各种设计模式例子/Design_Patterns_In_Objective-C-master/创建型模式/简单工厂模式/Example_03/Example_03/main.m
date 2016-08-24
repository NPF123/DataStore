//
//  main.m
//  Example_03
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

// The factory pattern is used to replace class constructors, abstracting the process of object generation so that the type of the object instantiated can be determined at run-time.
// 简单工厂模式是用来取代类构造函数，抽象对象的生成过程，对象实例化的类型可以在运行时决定的。

#import <Foundation/Foundation.h>
#import "CurrencyFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", [[CurrencyFactory currencyForCountry:CountryGreece] code]);
        NSLog(@"%@", [[CurrencyFactory currencyForCountry:CountrySpain] code]);
        NSLog(@"%@", [[CurrencyFactory currencyForCountry:CountryUnitedStates] code]);
        NSLog(@"%@", [[CurrencyFactory currencyForCountry:CountryUK] code]);
        
    }
    return 0;
}
