/**
 *  不纯的责任链模式_赛跑游戏
 */

#import <Foundation/Foundation.h>
#import "Stick.h"
#import "Player_1.h"
#import "Player_2.h"
#import "Player_3.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player<Player> *p1 = [[Player_1 alloc] init];
        Player<Player> *p2 = [[Player_2 alloc] init];
        Player<Player> *p3 = [[Player_3 alloc] init];
        
        p1.nextPlayer = p2;
        p2.nextPlayer = p3;
        
        Stick *stick =[[Stick alloc] init];
        
        NSLog(@"裁判：跑步🏃开始！");
        [p1 runWithStick:stick];
    }
    return 0;
}
