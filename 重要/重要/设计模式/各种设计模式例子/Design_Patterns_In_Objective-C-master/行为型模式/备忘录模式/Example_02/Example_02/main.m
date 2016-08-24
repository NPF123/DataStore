//
//  main.m
//  Example_02
//
//  Created by 找塑料 on 16/4/22.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

// The memento pattern is used to capture the current state of an object and store it in such a manner that it can be restored at a later time without breaking the rules of encapsulation.

#import <Foundation/Foundation.h>
#import "CheckPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameState *gameState = [[GameState alloc] init];
        [gameState restoreFromMemento:[CheckPoint restorePreviousStateWithKeyName:nil]];
        
        gameState.chapter = @"Black Mesa Inbound";
        gameState.weapon = @"Crowbar";
        [CheckPoint saveStateWithMemento:[gameState toMemento] keyName:nil];
        
        gameState.chapter = @"Anomalous Materials";
        gameState.weapon = @"Glock 17";
        [CheckPoint saveStateWithMemento:[gameState toMemento] keyName:nil];
        
        gameState.chapter = @"Unforeseen Consequences";
        gameState.weapon = @"MP5";
        [CheckPoint saveStateWithMemento:[gameState toMemento] keyName:@"gameState2"];
        
        gameState.chapter = @"Office Complex";
        gameState.weapon = @"Crossbow";
        [CheckPoint saveStateWithMemento:[gameState toMemento] keyName:nil];
        
        [gameState restoreFromMemento:[CheckPoint restorePreviousStateWithKeyName:@"gameState2"]];
        
    }
    return 0;
}
