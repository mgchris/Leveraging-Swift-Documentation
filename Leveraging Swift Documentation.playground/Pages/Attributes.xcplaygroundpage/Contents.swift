/*:
 # Attributes
 ---
 Lets talk about things that we will see on functions.  They tell the compiler only things we know or want
 */

import Foundation

//: ---
//: `@available`
//: This lets the compiler know if the code is allowed

@available(iOS 8.0, *) class MyAvailableClass { }

var object = MyAvailableClass()


//: ---
//: `@nosecape`
//:  Says that this function will not hold onto this closure.

var globalHandler: (Int) -> Int

func doSomething(num: Int, @noescape closure: (Int) -> Int) -> Int {
    
    //globalHandler = closure
    
    return closure(num)
}

globalHandler = { (num: Int) -> Int in
    return num + 2
}

doSomething(4, closure: globalHandler)
globalHandler(4)



//: ---
//: `@warn_unused_result`
//: It will display a warning if return value is not stored. Note this is one that is ignored in playgrounds, but not in real code

@warn_unused_result func number() -> Int {
    return 42
}

number()


//: ---
//: `rethrows`
//: Not an Attribute but a Declaration. Rethrow say that this method doesn't handle the error thrown, it just passage it along.

enum DemoError: ErrorType {
    case Anything
}

func run(a: () throws -> () ) rethrows {
    try a()
    //throw DemoError.Anything
}

do {
    
    try run( { throw DemoError.Anything } )
    
} catch let e as DemoError {
    print("Exception: \(e)")
}

//: ---
//: Navigate: [Table Of Content](Introduction)
