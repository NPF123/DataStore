/**
    Sunny软件公司欲开发一个基于Windows平台的公告板系统。
    该系统提供了一个主菜单(Menu)，在主菜单中包含了一些菜单项(MenuItem)，可以通过Menu类的addMenuItem()方法增加菜单项。
    菜单项的主要方法是click()，每一个菜单项包含一个抽象命令类，具体命令类包括OpenCommand(打开命令)，CreateCommand(新建命令)，EditCommand(编辑命令)等。
    命令类具有一个execute()方法，用于调用公告板系统界面类(BoardScreen)的open()、create()、edit()等方法。试使用命令模式设计该系统，以便降低MenuItem类与BoardScreen类之间的耦合度。
 */

#import <Foundation/Foundation.h>
#import "Menu.h"
#import "MenuItem.h"
#import "OpenCommand.h"
#import "CreateCommand.h"
#import "EditCommand.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Command<Command> *o = [[OpenCommand alloc] init];
        Command<Command> *c = [[CreateCommand alloc] init];
        Command<Command> *e = [[EditCommand alloc] init];
        MenuItem *m1 = [[MenuItem alloc] initWithCommand:o];
        MenuItem *m2 = [[MenuItem alloc] initWithCommand:c];
        MenuItem *m3 = [[MenuItem alloc] initWithCommand:e];
        
        Menu *menu = [[Menu alloc] init];
        [menu addItem:m1];
        [menu addItem:m2];
        [menu addItem:m3];
        
        [menu display];
        [menu clickItemOfIndex:0];
        [menu clickItemOfIndex:1];
        [menu clickItemOfIndex:2];
    }
    return 0;
}
