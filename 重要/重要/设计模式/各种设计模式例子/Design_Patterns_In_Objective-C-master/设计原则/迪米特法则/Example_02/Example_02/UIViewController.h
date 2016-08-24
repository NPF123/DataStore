//
//  UIViewController.h
//  Example_01
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIButton;
@class UILabel;
@class UISwitch;
@class UITableView;
@class UITextView;

/**
 Sunny软件公司所开发CRM系统包含很多业务操作窗口，在这些窗口中，某些界面控件之间存在复杂的交互关系，一个控件事件的触发将导致多个其他界面控件产生响应，例如，当一个按钮(Button)被单击时，对应的列表框(List)、组合框(ComboBox)、文本框(TextBox)、文本标签(Label)等都将发生改变
 
由于界面控件之间的交互关系复杂，导致在该窗口中增加新的界面控件时需要修改与之交互的其他控件的源代码，系统扩展性较差，也不便于增加和删除新控件。
 */
@interface UIViewController : NSObject {
    UIButton *_button;
    UILabel *_label;
    UISwitch *_switch;
    UITableView *_tableView;
    UITextView *_textView;
}

@end
