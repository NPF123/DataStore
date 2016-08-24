//
//  Student.m
//  Mediator
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Student.h"
#import "Mediator.h"

@implementation Student

- (instancetype)initWithName:(NSString *)name mediator:(Mediator <Mediator>  *)mediator{
    if (self = [super init]) {
        _name = [name copy];
        _mediator = mediator;
    }
    return self;
}

@end
