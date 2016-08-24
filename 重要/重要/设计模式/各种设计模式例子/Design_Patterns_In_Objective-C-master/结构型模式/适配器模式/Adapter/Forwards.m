//
//  Forwards.m
//  Adapter
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Forwards.h"

@implementation Forwards

- (void)attack {
    NSLog(@"前锋%s，进攻", self.name);
}

- (void)defense {
    NSLog(@"前锋%s，防守",self.name);
}

@end
