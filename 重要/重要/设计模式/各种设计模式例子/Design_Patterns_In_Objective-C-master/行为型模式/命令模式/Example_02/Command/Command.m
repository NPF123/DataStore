//
//  Command.m
//  Command
//
//  Created by btw on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Command.h"

@implementation Command

- (instancetype)initWithBarbecuer:(Barbecuer *)barbecuer {
    if (self = [super init]) {
        self.barbecuer = barbecuer;
    }
    return self;
}

@end
