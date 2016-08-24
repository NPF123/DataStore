//
//  main.m
//  Example_03
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Player_1.h"
#import "Player_2.h"
#import "Player_3.h"
#import "Player_4.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[
                           [[Card alloc] initWithCardName:@"猪"],
                           [[Card alloc] initWithCardName:@"三"],
                           [[Card alloc] initWithCardName:@"二"],
                           [[Card alloc] initWithCardName:@"四"],
                           [[Card alloc] initWithCardName:@"十"],
                           [[Card alloc] initWithCardName:@"猪"],
                           [[Card alloc] initWithCardName:@"十"],
                           [[Card alloc] initWithCardName:@"猪"],
                           [[Card alloc] initWithCardName:@"猪"],
                           [[Card alloc] initWithCardName:@"猪"],
                           [[Card alloc] initWithCardName:@"猪"],
                           [[Card alloc] initWithCardName:@"猪"],
                           ];
        
        Player<Player> *p1 = [[Player_1 alloc] init];
        Player<Player> *p2 = [[Player_2 alloc] init];
        Player<Player> *p3 = [[Player_3 alloc] init];
        Player<Player> *p4 = [[Player_4 alloc] init];
        
        p1.nextPlayer = p2;
        p2.nextPlayer = p3;
        p3.nextPlayer = p4;
        
        [array enumerateObjectsUsingBlock:^(Card* card, NSUInteger index, BOOL *stop) {
            card.index = (int)index + 1;
            [p1 takeOutCard:card];
        }];
    }
    return 0;
}
