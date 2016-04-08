/*:
 # Generics
 ---
 */

import Foundation

func swapTwoValues<T>(inout a: T, inout _ b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var string1 = "Hello"
var string2 = "World"
swapTwoValues(&string1, &string2)
string1
string2

var double1 = 100.1
var double2 = 100.9
swapTwoValues(&double1, &double2)
double1
double2

var int1 = 0
var int2 = 9
swapTwoValues(&int1, &int2)
int1
int2

//:  ### To The Max!
//: ---
func theMax<T where T: Comparable>(a: T, _ b: T) -> T {
    return a > b ? a : b
}

let maxInt = theMax(10, 20)
let maxDouble = theMax(0.4, 0.6)
let maxString = theMax("Hello", "World!")


//: ---
//: Navigate: [Table Of Content](Introduction)
