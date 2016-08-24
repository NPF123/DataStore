//
//  Player.m
//  BuilderMode
//
//  Created by btw on 15/3/5.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Player.h"

@implementation Player

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@:%p> menu=%@ mainWindow=%@ playList=%@ controlBar=%@", self.className, self, _menu, _mainWindow, _playList, _controlBar];
}

@end
