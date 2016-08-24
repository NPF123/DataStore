//
//  XiaoDongShop.m
//  AbstractFactory
//
//  Created by btw on 15/2/28.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "XiaoDongShop.h"
#import "XiaodongPhone.h"
#import "XiaodongTV.h"

@implementation XiaoDongShop

- (Phone <Phone> *)createPhone {
    return [[XiaodongPhone alloc] initWithPhoneName:@"小东手机" price:3242.5];
}

- (TV <TV> *)createTV {
    return [[XiaodongTV alloc] initWithTVName:@"小东电视" price:1000.5];
}

@end
