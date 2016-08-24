//
//  OperationFactory.swift
//  SimpleFactory
//
//  Created by Bi Weiming on 15/5/14.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

import Foundation

class OperationFactory {
    static func createOperate(str:String) -> Operation? {
        var oper:Operation? = nil
        switch str {
        case "+":
            oper = OperationAdd()
        case "-":
            oper = OperationSub()
        case "*":
            oper = OperationMul()
        case "/":
            oper = OperationDiv()
        default:
            break
        }
        
        return oper
    }
}