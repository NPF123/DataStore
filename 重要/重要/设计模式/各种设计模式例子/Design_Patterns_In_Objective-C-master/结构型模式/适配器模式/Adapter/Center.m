//
//  Center.m
//  Adapter
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Center.h"

@implementation Center

- (instancetype)initWithName:(char *)name {
    if (self = [super init]) {
        _name = (char *)malloc(strlen(name) + 1);
        strcpy(_name, name);
    }
    return self;
}

- (void)防守 {
    NSLog(@"中锋%s防守", self.name);
}

- (void)进攻 {
    NSLog(@"中锋%s进攻", self.name);
}

@end
