/*:
 # Duck Protocol
 ---
 Lets look at that duck problem again, but this time using protocols.
 */

import Foundation

let child = Child(name: "Jake", age: 6)
let rubberDucky = RubberDucky()

var duckies = [Duck]()
duckies.append(rubberDucky)
duckies.append(child)

for duck in duckies {
    print(duck.quack())
    duck.walk()
}

print("Who am I: \(duckies[0])")
print("Who am I: \(duckies[1])")



//: Lets see how important protocols are to [Swift](http://swiftdoc.org)

//: ---
//: Navigate: [Table Of Content](Introduction)
