//
//  Adapter.m
//  Adapter
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Adapter.h"
#import "Center.h"

@implementation Adapter

// 复写
- (instancetype)initWithName:(char *)name {
    if (self = [super initWithName:"适配器"]) {
        if (strcmp(name, "Yaoming") == 0) {
            _center = [[Center alloc] initWithName:name];
        }
    }
    return self;
}

- (void)attack {
    NSLog(@"====== 调用适配器 ======");
    [_center 进攻];
    NSLog(@"======================\n\n");
}

- (void)defense {
    NSLog(@"====== 调用适配器 ======");
    [_center 防守];
    NSLog(@"======================\n\n");
}

@end
