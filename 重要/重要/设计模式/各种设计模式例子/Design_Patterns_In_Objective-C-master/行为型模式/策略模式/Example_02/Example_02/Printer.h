//
//  Printer.h
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrintStrategy.h"

@interface Printer : NSObject

@property (strong, nonatomic) id<PrintStrategy> strategy;

- (instancetype)initWithStrategy:(id<PrintStrategy>)strategy;

- (NSString *)printString:(NSString *)str;

@end
