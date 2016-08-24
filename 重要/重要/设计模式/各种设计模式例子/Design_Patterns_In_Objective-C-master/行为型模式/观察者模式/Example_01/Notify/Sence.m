//
//  Sence.m
//  Observer
//
//  Created by 伟明 毕 on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Sence.h"
#import "Stock.h"
#import "Sam.h"
#import "Mike.h"

@implementation Sence

- (void)sence {
    Stock *stock = [[Stock alloc] init];
    Sam *sam = [[Sam alloc] init];
    Mike *mike = [[Mike alloc] init];
    [stock addObserver:sam];
    [stock addObserver:mike];
    
    _stock = stock;
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(test) userInfo:nil repeats:YES];
}

- (void)test {
    NSNumber *b = [NSNumber numberWithInt:arc4random() % 2];
    if([b boolValue]) {
        [_stock notifyWithType:@"up"];
    } else {
        [_stock notifyWithType:@"down"];
    }
}

@end
