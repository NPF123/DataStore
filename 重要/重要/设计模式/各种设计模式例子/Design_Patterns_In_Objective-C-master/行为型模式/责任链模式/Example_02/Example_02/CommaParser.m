//
//  CommaParser.m
//  Example_02
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "CommaParser.h"

@implementation CommaParser

- (NSString *)parserWithString:(NSString *)string {
    if ([string rangeOfString:@","].location != NSNotFound) {
        return [string stringByReplacingOccurrencesOfString:@"," withString:@"9i0o"];
    } else {
        return [self.nextParser parserWithString:string];
    }
}

@end
