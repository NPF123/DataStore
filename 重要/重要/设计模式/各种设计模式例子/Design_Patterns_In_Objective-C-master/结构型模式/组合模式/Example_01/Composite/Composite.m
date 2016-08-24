//
//  Composite.m
//  Composite
//
//  Created by 伟明 毕 on 15/2/25.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Composite.h"

@implementation Composite

- (instancetype)initWithName:(NSString *)name {
    if (self = [super initWithName:name]) {
        _children = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)add:(Components<Components> *)componenet {
    [_children addObject:componenet];
}

- (void)remove:(Components<Components> *)componenet {
    [_children removeObject:componenet];
}

- (void)display:(int)depth {
    NSString *s = @"-";
    for (int i = 0; i<depth; i++) {
        s = [s stringByAppendingString:s];
    }

    NSLog(@"%@ %@", s, self.name);
    
    for (Components <Components> *comp in _children) {
        [comp display:depth + 2];
    }
}

@end
