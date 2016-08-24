//
//  Phone.m
//  Mediator
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Phone.h"
#import "Student.h"
#import "Jack.h"
#import "Sam.h"

@implementation Phone

- (void)sendMessage:(NSString *)message student:(Student<Student> *)student {
    if (_student1 == student) {
        [_student2 receiveMessage:message];
    } else if (_student2 == student) {
        [_student1 receiveMessage:message];
    }
}

@end
