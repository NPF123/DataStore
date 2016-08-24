//
//  XiaoHongShop.m
//  AbstractFactory
//
//  Created by btw on 15/2/28.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "XiaoHongShop.h"
#import "XiaohongPhone.h"
#import "XiaohongTV.h"

@implementation XiaoHongShop

- (TV <TV> *)createTV {
    return [[XiaohongTV alloc] initWithTVName:@"小红电视" price:313.55];
}

- (Phone <Phone> *)createPhone {
    return [[XiaohongPhone alloc] initWithPhoneName:@"小红手机" price:2334];
}

@end
