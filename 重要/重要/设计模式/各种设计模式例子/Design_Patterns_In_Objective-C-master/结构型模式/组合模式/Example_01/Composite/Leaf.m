//
//  Leaf.m
//  Composite
//
//  Created by 伟明 毕 on 15/2/25.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Leaf.h"

@implementation Leaf

- (void)add:(Components<Components> *)componenet {
    NSLog(@"Cannot add to a leaf");
}

- (void)remove:(Components<Components> *)componenet {
    NSLog(@"Cannot remove from a leaf");
}

- (void)display:(int)depth {
    NSString *s = @"-";
    for (int i = 0; i<depth; i++) {
        s = [s stringByAppendingString:s];
    }
    
    NSLog(@"%@ %@", s, self.name);
}

@end
