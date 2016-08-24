//
//  Mediator.swift
//  Example_02
//
//  Created by Bi Weiming on 15/5/7.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

import Foundation

//抽象中介者
class Mediator : NSObject {
    func componentChanged(c:Component) {
        
    }
}

//具体中介者
class ConcreteMediator : Mediator {
    //维持对各个同事对象的引用
    var addButton:Button?
    var list:List?
    var userNameTextBox:TextBox?
    var cb:ComboBox?
    
    //封装同事对象之间的交互
    override func componentChanged(c : Component) {
        //单击按钮
        if(c == addButton) {
            println("--单击增加按钮--")
            list?.update()
            cb?.update()
            userNameTextBox?.update()
        }
            //从列表框选择客户
        else if(c == list) {
            println("--从列表框选择客户--");
            cb?.select();
            userNameTextBox?.setText();
        }
            //从组合框选择客户
        else if(c == cb) {
            println("--从组合框选择客户--");
            cb?.select();
            userNameTextBox?.setText();
        }
    }  
}