//
//  UIViewController.m
//  Example_01
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "UIViewController.h"
#import "UIButton.h"
#import "UILabel.h"
#import "UITableView.h"
#import "UISwitch.h"
#import "UITextView.h"
#import "Mediator.h"

@implementation UIViewController {
    Mediator *_mediator;
}

- (instancetype)init {
    if (self = [super init]) {
        _button = [[UIButton alloc] init];
        _label = [[UILabel alloc] init];
        _tableView = [[UITableView alloc] init];
        _switch = [[UISwitch alloc] init];
        _textView = [[UITextView alloc] init];
        
        _mediator = [[Mediator alloc] init];
        _mediator.button = _button;
        _mediator.label = _label;
        _mediator.tableView = _tableView;
        _mediator.aSwitch = _switch;
        _mediator.textView = _textView;
        
    }
    return self;
}

// 假设button被点击了
- (void)buttonClicked {
    [_mediator buttonClicked];
}

// 假设switch被点击
- (void)switchTouch:(UISwitch *)aSwitch {
    [_mediator switchTouch:aSwitch];
}

@end
