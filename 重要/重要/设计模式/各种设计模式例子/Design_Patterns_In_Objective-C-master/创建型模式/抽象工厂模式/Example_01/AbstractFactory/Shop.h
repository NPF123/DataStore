//
//  Shop.h
//  AbstractFactory
//
//  Created by btw on 15/2/28.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phone.h"
#import "TV.h"

@protocol Shop <NSObject>

- (Phone <Phone> *)createPhone;
- (TV <TV> *)createTV;

@end

@interface Shop : NSObject

@property (strong, nonatomic) NSString *shopName;

- (instancetype)initWithName:(NSString *)shopName;

@end
