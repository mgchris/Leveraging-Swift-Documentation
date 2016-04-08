/*:
 # Duck Class problem
 ---
 
 Let talk about a common problem we can have with classes and subclassing
 
 */

import Foundation

let child = Child(name: "Jake", age: 6)
let rubberDucky = RubberDucky()
let duck = Duck()

var duckies = [duck, rubberDucky]

//duckies.append(child)  // So why do we have this error?

for d in duckies {
    print(d.quack())
    d.walk()
}

//: ---
//: Navigate: [Table Of Content](Introduction)
