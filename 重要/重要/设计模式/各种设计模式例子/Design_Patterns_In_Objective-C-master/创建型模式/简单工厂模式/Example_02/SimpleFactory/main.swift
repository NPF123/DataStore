//
//  main.swift
//  SimpleFactory
//
//  Created by Bi Weiming on 15/5/14.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

import Foundation

var op:Operation = OperationFactory.createOperate("+")!
op.numberA = 10.0
op.numberB = 20.0
var result:Double = op.getResult()
println("10.0 + 20.0 = \(result)")
