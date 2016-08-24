//
//  DivFacotry.m
//  FactoryMethod
//
//  Created by btw on 15/3/9.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "DivFacotry.h"
#import "DivOperation.h"

@implementation DivFacotry

- (Operation <Operation> *)createOperation {
    return [[DivOperation alloc] init];
}

@end
