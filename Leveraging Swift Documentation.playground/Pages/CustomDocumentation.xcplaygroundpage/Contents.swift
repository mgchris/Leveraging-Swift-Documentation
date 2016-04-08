/*:
 # Custom Documentation
 ---
 Now that we know that we can create our own Quick Help documentation lets take a look at some.
 */

import Foundation


//: ### Simple Types
let ae1 = addInt(1, b: 2)
let ae2 = addFloat(1.2, 2.8)
let ae3 = addTwo(0)
let ae4 = addExternalInt(rhs: 1, lhs: 2)
let ae5 = addInts(1, 2, 3, 4)
let ae6 = addTuple(1, 2)


//: ### In Out
var hello = "Hello"
var world = "World"
swapTwoStrings(&hello, &world)
hello
world


//: ---
//: ### Print
print("Hello world!")
print("Hello", "world!")
print("Hello", "world", separator: " ", terminator: "!\n")


//: ---
//: ### Closures
var aValue = 0
executeClosure( { aValue += 1 } )
aValue

var bValue = 0
closureDouble( { aValue += 1 }, completed: { bValue += 1 } )
aValue
bValue

var cValue = 0
var dValue = -1
let returnValue = closureCrazy( { aValue += 1 }, b: { bValue += 1 }, c: { cValue += 1 }, d: { dValue += 1 } )
aValue
bValue
cValue
dValue
returnValue()


//: ---
//: Operator
let bird = Bird()
let word = Word()

let isTheWord = bird >= word


//: ---
//: Navigate: [Table Of Content](Introduction)
