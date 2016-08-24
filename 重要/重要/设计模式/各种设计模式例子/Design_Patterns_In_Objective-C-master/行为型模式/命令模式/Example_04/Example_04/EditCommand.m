//
//  EditCommand.m
//  Example_04
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "EditCommand.h"
#import "BoardScreen.h"

@implementation EditCommand

- (void)execute {
    [self.boardScreen edit];
}

@end
