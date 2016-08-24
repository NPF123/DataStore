//
//  CheckPoint.h
//  Example_02
//
//  Created by 找塑料 on 16/4/22.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameState.h"

@interface CheckPoint : NSObject

+ (void)saveStateWithMemento:(Memento *)memento keyName:(NSString *)keyName;

+ (Memento *)restorePreviousStateWithKeyName:(NSString *)keyName;

@end
