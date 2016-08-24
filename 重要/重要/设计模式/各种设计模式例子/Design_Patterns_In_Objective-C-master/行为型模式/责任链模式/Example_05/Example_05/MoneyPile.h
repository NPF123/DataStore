//
//  MoneyPile.h
//  Example_05
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MoneyPile : NSObject

@property (assign, nonatomic) NSInteger value;
@property (assign, nonatomic) NSInteger quantity;
@property (strong, nonatomic, nullable) MoneyPile *nextPile;

- (nonnull instancetype)initWithValue:(NSInteger)value
                             quantity:(NSInteger)quantity
                             nextPile:(MoneyPile * _Nullable)nextPile;

- (BOOL)canWithdraw:(NSInteger)value;



@end
