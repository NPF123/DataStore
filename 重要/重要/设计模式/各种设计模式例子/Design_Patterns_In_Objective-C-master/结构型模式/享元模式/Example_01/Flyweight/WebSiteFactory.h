//
//  WebSiteFactory.h
//  Flyweight
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "WebSite.h"

@interface WebSiteFactory : NSObject
{
    NSMutableDictionary *_webSiteDict;
}

- (WebSite <WebSite> *)createWebSiteWithName:(NSString *)name;

- (unsigned int)amount;

@end
