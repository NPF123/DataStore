//
//  Printer.m
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "Printer.h"

@implementation Printer

- (instancetype)initWithStrategy:(id<PrintStrategy>)strategy
{
    if (self = [super init]) {
        self.strategy = strategy;
    }
    return self;
}

- (NSString *)printString:(NSString *)str
{
    return [self.strategy printString:str];
}

@end
