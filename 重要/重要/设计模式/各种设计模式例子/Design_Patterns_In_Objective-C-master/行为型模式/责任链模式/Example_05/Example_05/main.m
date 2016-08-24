//
//  main.m
//  Example_05
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

// 责任链模式是用来处理各种各样的请求，其中每一个请求都可以由一个不同的处理程序处理。

#import <Foundation/Foundation.h>
#import "ATM.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create piles of money and link them together 10 < 20 < 50 < 100.**
        MoneyPile *ten = [[MoneyPile alloc] initWithValue:10 quantity:6 nextPile:nil];
        MoneyPile *twenty = [[MoneyPile alloc] initWithValue:20 quantity:2 nextPile:ten];
        MoneyPile *fifty = [[MoneyPile alloc] initWithValue:50 quantity:2 nextPile:twenty];
        MoneyPile *hundred = [[MoneyPile alloc] initWithValue:100 quantity:1 nextPile:fifty];
        
        // Build ATM.
        ATM *atm = [[ATM alloc] initWithHundred:hundred fifty:fifty twenty:twenty ten:ten];
        NSLog(@"%@", [atm canWithdraw:310]);
        NSLog(@"%@", [atm canWithdraw:100]);
        NSLog(@"%@", [atm canWithdraw:165]);
        NSLog(@"%@", [atm canWithdraw:30]);
        
    }
    return 0;
}
