//
//  CheckPoint.m
//  Example_02
//
//  Created by 找塑料 on 16/4/22.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "CheckPoint.h"

@implementation CheckPoint

+ (void)saveStateWithMemento:(Memento *)memento keyName:(NSString *)keyName
{
    NSString *key = keyName ? : DPMementoGameState;
    [[NSUserDefaults standardUserDefaults] setObject:memento forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (Memento *)restorePreviousStateWithKeyName:(NSString *)keyName
{
    NSString *key = keyName ? : DPMementoGameState;
    return [[NSUserDefaults standardUserDefaults] objectForKey:key] ? : [Memento new];
}
@end
