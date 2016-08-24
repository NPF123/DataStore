//
//  main.m
//  Example_02
//
//  Created by btw on 15/3/20.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Teacher *t = [[Teacher alloc] init];
        [(Student *)t play];
    }
    return 0;
}
