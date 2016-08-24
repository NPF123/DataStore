//
//  PowerOperation.m
//  FactoryMethod
//
//  Created by Bi Weiming on 15/6/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "PowerOperation.h"

@implementation PowerOperation

- (double)getResult {
    return pow(self.op1, self.op2);
}

@end
