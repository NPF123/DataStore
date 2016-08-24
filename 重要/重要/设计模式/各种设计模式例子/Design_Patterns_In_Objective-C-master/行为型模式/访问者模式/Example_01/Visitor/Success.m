//
//  Success.m
//  Visitor
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Success.h"
#import "Man.h"
#import "Woman.h"

@implementation Success

- (void)getManConclusion:(Man *)man {
    NSLog(@"当%@%@时，背后多半有一个伟大的女人。", man, self);
}

- (void)getWomanConclusion:(Woman *)woman {
    NSLog(@"当%@%@时，背后多半有一个不成功的男人。", woman, self);
}

- (NSString *)description {
    return @"成功";
}

@end
