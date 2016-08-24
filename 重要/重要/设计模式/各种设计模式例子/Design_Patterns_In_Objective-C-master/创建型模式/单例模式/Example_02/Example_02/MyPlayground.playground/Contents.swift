//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

class Sun {
    var radius:Double = 3.14
    var color:String = "Yellow"
    static var singleton:Sun!
    static func getInstance() -> Sun {
        if (singleton == nil) {
            singleton = Sun()
        }
        return singleton
    }
}

Sun.getInstance()

