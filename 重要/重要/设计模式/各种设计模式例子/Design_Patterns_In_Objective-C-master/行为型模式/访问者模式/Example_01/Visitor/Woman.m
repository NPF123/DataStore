//
//  Woman.m
//  Visitor
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Woman.h"

@implementation Woman

- (void)accept:(Action<Action> *)action {
    [action getWomanConclusion:self];
}

- (NSString *)description {
    return @"女人";
}

@end
