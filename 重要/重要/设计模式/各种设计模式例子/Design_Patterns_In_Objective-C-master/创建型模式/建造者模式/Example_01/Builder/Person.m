//
//  Person.m
//  Builder
//
//  Created by 伟明 毕 on 15/2/23.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Person.h"

@implementation Person
- (NSString *)description {
    return [NSString stringWithFormat:@"header: %@, body: %@", self.header, self.body];
}
@end
