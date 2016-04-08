//: [Previous](@previous)

import Foundation

//: ### Problems
//: Writing the same code many times
var numInt = addInt(1, b: 1)
var numFloat = addFloat(1.2, 0.8)


//: ### Wouldn't it be nice if we could have a `add` function?

protocol Addedable {
    func +(lhs: Self, rhs: Self) -> Self
}

extension Int: Addedable {}
extension Double: Addedable {}


func add<T where T: Addedable>(a: T, _ b: T) -> T {
    return a + b
}

var addInt = add(0, 1)
var addDouble = add(0.2, 0.8)


//: ---
//: Navigate: [Table Of Content](Introduction)

