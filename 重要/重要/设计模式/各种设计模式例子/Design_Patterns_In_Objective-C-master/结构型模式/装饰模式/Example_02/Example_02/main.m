//
//  main.m
//  Example_02
//
//  Created by 伟明 毕 on 15/3/20.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Tshirts.h"
#import "BigTrouser.h"
#import "Tie.h"
#import "Sneakers.h"
#import "Suit.h"
#import "LeatherShoes.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] initWithName:@"毕伟明"];
        
        NSLog(@"============== 第一种装扮 ==============");
        Finery *tshirts = [[Tshirts alloc] init];
        Finery *bigTrouser = [[BigTrouser alloc] init];
        Finery *sneakers = [[Sneakers alloc] init];
        [tshirts setDecorate:p];
        [bigTrouser setDecorate:tshirts];
        [sneakers setDecorate:bigTrouser];
        [sneakers show];
        
        NSLog(@"============== 第二种装扮 ==============");
        Finery *leatherShoes = [[LeatherShoes alloc] init];
        Finery *tie = [[Tie alloc] init];
        Finery *suit = [[Suit alloc] init];
        [leatherShoes setDecorate:p];
        [tie setDecorate:leatherShoes];
        [suit setDecorate:tie];
        [suit show];
        
        NSLog(@"============== 第三种装扮 ==============");
        Finery *a = [[Sneakers alloc] init];
        Finery *b = [[LeatherShoes alloc] init];
        Finery *c = [[BigTrouser alloc] init];
        [a setDecorate:p];
        [b setDecorate:a];
        [c setDecorate:b];
        [c show];
    }
    return 0;
}
