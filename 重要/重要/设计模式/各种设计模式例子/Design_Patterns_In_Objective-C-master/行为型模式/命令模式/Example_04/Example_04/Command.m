//
//  Command.m
//  Example_04
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Command.h"
#import "BoardScreen.h"

@interface Command()

@property (strong, nonatomic, readwrite) BoardScreen *boardScreen;

@end

@implementation Command

- (instancetype)init {
    if (self = [super init]) {
        self.boardScreen = [[BoardScreen alloc] init];
    }
    return self;
}

@end
