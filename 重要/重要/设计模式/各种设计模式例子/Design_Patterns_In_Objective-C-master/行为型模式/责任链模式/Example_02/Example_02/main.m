//
//  main.m
//  Example_02
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AsteriskParser.h"
#import "CommaParser.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Parser<Parser> *p1 = [[AsteriskParser alloc] init];
        Parser<Parser> *p2 = [[CommaParser alloc] init];
        p1.nextParser = p2;
        
        NSString *password = @"1*393898";
        NSString *passwordEncode = [p1 parserWithString:password];
        NSLog(@"%@", passwordEncode);
    }
    return 0;
}
