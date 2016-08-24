//
//  Mediator.h
//  Example_02
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
 可以通过引入一个专门用于控制界面控件交互的中间类(Mediator)来降低界面控件之间的耦合度。引入中间类之后，界面控件之间不再发生直接引用，而是将请求先转发给中间类，再由中间类来完成对其他控件的调用。当需要增加或删除新的控件时，只需修改中间类即可，无须修改新增控件或已有控件的源代码
 */
@interface Mediator : NSObject

@property (weak, nonatomic) UIButton *button;
@property (weak, nonatomic) UILabel *label;
@property (weak, nonatomic) UISwitch *aSwitch;
@property (weak, nonatomic) UITableView *tableView;
@property (weak, nonatomic) UITextView *textView;

- (void)buttonClicked;

- (void)switchTouch:(UISwitch *)aSwitch;

@end
