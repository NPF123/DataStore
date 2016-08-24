//
//  main.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Leave.h"
#import "Director.h"
#import "Manager.h"
#import "GeneralManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Leave *leave_1 = [[Leave alloc] init];
        leave_1.content = @"去看病";
        leave_1.day = 2;
        leave_1.proposer = @"阿李罗";
        
        Leave *leave_2 = [[Leave alloc] init];
        leave_2.content = @"产假";
        leave_2.day = 180;
        leave_2.proposer = @"小姐";
        
        Superior<Superior> *director = [[Director alloc] init];
        Superior<Superior> *manager = [[Manager alloc] init];
        Superior<Superior> *generalManager = [[GeneralManager alloc] init];
        
        director.nextSuperior = manager;
        manager.nextSuperior = generalManager;
        
        [director approvalWithLeave:leave_1];
        [director approvalWithLeave:leave_2];
    }
    return 0;
}
