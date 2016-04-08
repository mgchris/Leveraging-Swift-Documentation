/*:
 # Before Generics
 ---
 */

import Foundation

//: ### For Strings
var hello = "Hello"
var world = "World"
swapTwoStrings(&hello, &world)
hello
world

//: ### For Doubles
var a = 22.6
var b = 66.4
swapTwoDoubles(&a, &b)
a
b

//: ### Wouldn't it be nice if we didn't have to create a new function for each type?

//: ---
//: Navigate: [Table Of Content](Introduction)
