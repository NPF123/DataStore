//
//  WebSite.h
//  Flyweight
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;

@protocol WebSite <NSObject>

- (void)useWithUser:(User *)user;

@end

@interface WebSite : NSObject
{
    @protected
    NSString *_name;
}

- (instancetype)initWithName:(NSString *)name;

@end
