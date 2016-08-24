//
//  WebSiteFactory.m
//  Flyweight
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "WebSiteFactory.h"
#import "ConcreteWebSite.h"

@implementation WebSiteFactory

- (instancetype)init {
    if (self = [super init]) {
        _webSiteDict = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (WebSite <WebSite> *)createWebSiteWithName:(NSString *)name {
    if (nil == [_webSiteDict objectForKey:name]) {
        WebSite <WebSite> *webSite = [[ConcreteWebSite alloc] initWithName:name];
        [_webSiteDict setObject:webSite forKey:name];
    }
    
    return [_webSiteDict objectForKey:name];
}

- (unsigned int)amount {
    return (unsigned int)_webSiteDict.count;
}

@end
