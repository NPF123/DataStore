//
//  Sun.m
//  Example_01
//
//  Created by btw on 15/3/16.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "Sun.h"

static Sun *_theSun = nil;

@implementation Sun

+ (Sun *)sharedSun {
    if (_theSun == nil) {
        @synchronized(self) {
            if (_theSun == nil) {
                _theSun = [[Sun alloc] init];
            }
        }
    }
    
    return _theSun;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@:%p> color:%@  radius:%@", self.className, self, self.color, self.radius];
}

@end
