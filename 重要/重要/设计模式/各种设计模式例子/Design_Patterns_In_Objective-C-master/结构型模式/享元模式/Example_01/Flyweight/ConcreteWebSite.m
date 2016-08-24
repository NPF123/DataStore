//
//  ConcreteWebSite.m
//  Flyweight
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "ConcreteWebSite.h"
#import "User.h"

@implementation ConcreteWebSite

- (void)useWithUser:(User *)user {
    NSLog(@"当前用户：%@, 网站分类：%@", user.name, _name);
}

@end
