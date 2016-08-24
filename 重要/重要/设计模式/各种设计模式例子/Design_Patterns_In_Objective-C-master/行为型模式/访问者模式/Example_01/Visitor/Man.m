//
//  Man.m
//  Visitor
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Man.h"

@implementation Man

- (void)accept:(Action<Action> *)action {
    [action getManConclusion:self];
}

- (NSString *)description {
    return @"男人";
}

@end
