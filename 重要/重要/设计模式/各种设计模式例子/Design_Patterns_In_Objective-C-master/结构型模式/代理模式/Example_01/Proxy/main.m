//
//  main.m
//  Proxy
//
//  Created by 伟明 毕 on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Loon.h"
#import "Mum.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Loon *loon = [[Loon alloc] initWithName:@"懒人甲"];
        NSObject <LoonDelegate> *mum = [[Mum alloc] init];
        loon.delegate = mum;
        
        [loon loonEat];
        [loon loonDressing];
    }
    return 0;
}
