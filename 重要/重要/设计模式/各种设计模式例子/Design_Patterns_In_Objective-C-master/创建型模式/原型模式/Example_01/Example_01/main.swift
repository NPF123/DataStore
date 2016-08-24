//
//  main.swift
//  Example_01
//
//  Created by Bi Weiming on 15/6/29.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

import Foundation

// 原型模式

class Dog : NSObject, NSCopying, Printable {
    var name:String?
    var age:Int?
    override init() {}
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    func copyWithZone(zone: NSZone) -> AnyObject {
        var newDog:Dog = Dog()
        newDog.name = self.name
        newDog.age = self.age
        return newDog
    }
    
    override var description: String {
        return NSString(format: "<%@:%p> name = %@, age = %d",self.className , self, self.name!, self.age!) as String
    }
}

var dog1:Dog = Dog(name: "大黄", age: 1)
var dog2:Dog = dog1.copy() as! Dog
println("\(dog1)")
println("\(dog2)")