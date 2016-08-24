//
//  Mediator.h
//  Mediator
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@protocol Mediator <NSObject>

- (void)sendMessage:(NSString *)message student:(Student <Student> *)student;

@end

@interface Mediator : NSObject
{
    @protected
    Student <Student> *_student1;
    Student <Student> *_student2;
}

- (void)setStudent1:(Student <Student> *)student1;
- (void)setStudent2:(Student <Student> *)student2;

@end
