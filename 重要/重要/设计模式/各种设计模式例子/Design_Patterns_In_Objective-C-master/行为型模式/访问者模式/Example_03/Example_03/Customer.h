//
//  Customer.h
//  Example_03
//
//  Created by 找塑料 on 16/5/3.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Visitor;
@protocol Visitor;

@protocol Customer <NSObject>

/**
 *  接受访问者的访问
 *
 *  @param visitor 访问者对象
 */
- (void)acceptVisitor:(Visitor<Visitor> *)visitor;

@end

@interface Customer : NSObject

@property (strong, nonatomic) NSString *customerId;

@property (strong, nonatomic) NSString *name;

@end
