//
//  AsteriskParser.m
//  Example_02
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "AsteriskParser.h"

@implementation AsteriskParser

- (NSString *)parserWithString:(NSString *)string {
    if ([string rangeOfString:@"*"].location != NSNotFound) {
       return [string stringByReplacingOccurrencesOfString:@"*" withString:@"3d9v"];
    } else {
        return [self.nextParser parserWithString:string];
    }
}

@end
