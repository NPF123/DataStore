//
//  main.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DisplayHelpDocumentCommand.h"
#import "SettingHomeCommand.h"
#import "MyWindow.h"
#import "Button.h"

#import "QueueButton.h"
#import "CommandQueue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyWindow *window = [[MyWindow alloc] initWithWindowName:@"用户中心"];
        Command<Command> *helpCommand = [[DisplayHelpDocumentCommand alloc] init];
        Command<Command> *settingCommand = [[SettingHomeCommand alloc] init];
        
        Button *b = [[Button alloc] initWithName:@"帮助文档" Command:helpCommand];
        Button *s = [[Button alloc] initWithName:@"用户中心" Command:settingCommand];
        
        [window addButton:b];
        [window addButton:s];
        
//        [window display];
        
        // 命令队列
        CommandQueue *queue = [[CommandQueue alloc] init];
        [queue addCommand:helpCommand];
        [queue addCommand:settingCommand];
        
        QueueButton *btnQueue = [[QueueButton alloc] initWithCommandQueue:queue];
        [btnQueue call];
    }
    return 0;
}
