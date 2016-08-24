//
//  Component.swift
//  Example_02
//
//  Created by Bi Weiming on 15/5/7.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

import Foundation

//抽象组件类：抽象同事类
class Component : NSObject {
    var mediator:Mediator?
    
    func changed() {
        self.mediator?.componentChanged(self)
    }
    
    func update() {
        
    }
}

//按钮类：具体同事类
class Button : Component {
    override func update() {
        //按钮不产生交互
    }
}

// 列表框类：具体同事类
class List : Component {
    override func update() {
        println("列表框增加一项：张无忌。");
    }
    
    func select() {
        println("列表框选中项：小龙女。");
    }
}

//组合框类：具体同事类
class ComboBox : Component {
    override func update() {
        println("组合框增加一项：张无忌。");
    }
    
    func select() {
        println("组合框选中项：小龙女。");
    }
}

//文本框类：具体同事类
class TextBox : Component {
    override func update() {
        println("客户信息增加成功后文本框清空。");
    }
    
    func setText() {
        println("文本框显示：小龙女。");
    }
}
