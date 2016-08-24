//
//  Operation.swift
//  SimpleFactory
//
//  Created by Bi Weiming on 15/5/14.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

import Foundation

class Operation {
    var numberA:Double = 0.0
    var numberB:Double = 0.0
    
    /**
    Abstract Method
    
    :returns: Double Value
    */
    func getResult() -> Double {
        return 0.0
    }
}

class OperationAdd: Operation {
    override func getResult() -> Double {
        return self.numberA + self.numberB
    }
}

class OperationSub: Operation {
    override func getResult() -> Double {
        return self.numberA - self.numberB
    }
}

class OperationMul: Operation {
    override func getResult() -> Double {
        return self.numberA * self.numberB
    }
}

class OperationDiv: Operation {
    override func getResult() -> Double {
        if self.numberB == 0 {
            println("分母不能为0")
            return 0.0
        } else {
            return self.numberA / self.numberB
        }
    }
}