//
//  TestPaper.m
//  Templete
//
//  Created by 伟明 毕 on 15/2/23.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "TestPaper.h"

@interface TestPaper() <TestPaper>

@end

@implementation TestPaper

- (void)test1 {
    NSLog(@"1.演奏笛子时，用手分别按住不同的笛孔，改变振动的空气柱的长度，从而改变了声音的");
    NSLog(@"%@", [self test1Answer]);
}

- (void)test2 {
    NSLog(@"2.雨后的街道上有些积水，到了夜晚背着灯光行走，则看到");
    NSLog(@"%@", [self test2Answer]);
}

- (NSString *)test1Answer {
    return @"";
}

- (NSString *)test2Answer {
    return @"";
}

@end
