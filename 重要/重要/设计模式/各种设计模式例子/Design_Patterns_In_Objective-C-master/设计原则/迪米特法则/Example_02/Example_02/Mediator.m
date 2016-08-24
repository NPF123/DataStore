//
//  Mediator.m
//  Example_02
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "Mediator.h"
#import "UIButton.h"
#import "UILabel.h"
#import "UITableView.h"
#import "UISwitch.h"
#import "UITextView.h"
#import "Mediator.h"

@implementation Mediator

@synthesize aSwitch = _switch;

// 假设button被点击了
- (void)buttonClicked {
    _label.text = @"Hello";
    _tableView.frame = CGRectMake(0, 0, 320, 480);
    _textView.text = @"....";
}

// 假设switch被点击
- (void)switchTouch:(UISwitch *)aSwitch {
    _switch.on =  _switch.on == YES ? NO : YES;
    _tableView.frame = CGRectZero;
    _textView.text = @"fff";
}

@end
