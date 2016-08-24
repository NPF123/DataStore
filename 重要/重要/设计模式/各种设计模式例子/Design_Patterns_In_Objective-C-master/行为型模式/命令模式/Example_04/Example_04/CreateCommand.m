//
//  CreateCommand.m
//  Example_04
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "CreateCommand.h"
#import "BoardScreen.h"

@implementation CreateCommand

- (void)execute {
    [self.boardScreen create];
}

@end
