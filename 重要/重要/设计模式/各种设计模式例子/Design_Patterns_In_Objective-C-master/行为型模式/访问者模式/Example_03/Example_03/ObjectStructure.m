//
//  ObjectStructure.m
//  Example_03
//
//  Created by 找塑料 on 16/5/3.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "ObjectStructure.h"
#import "Customer.h"

@interface ObjectStructure()

@property (strong, nonatomic) NSMutableArray <Customer<Customer> *> *col;

@end

@implementation ObjectStructure

- (instancetype)init
{
    if (self = [super init]) {
        _col = [NSMutableArray array];
    }
    return self;
}

- (void)handleRequest:(Visitor<Visitor> *)visitor
{
    [_col enumerateObjectsUsingBlock:^(Customer<Customer> * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj acceptVisitor:visitor];
    }];
}

- (void)addElement:(Customer<Customer> *)ele
{
    [_col addObject:ele];
}

@end
