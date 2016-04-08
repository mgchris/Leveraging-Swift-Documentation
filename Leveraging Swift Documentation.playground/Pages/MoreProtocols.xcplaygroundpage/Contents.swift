/*:
 # More Protocol
 ---
 They're a lot more things that protocols can do...
 */

import Foundation

protocol Container {
    associatedtype ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

/*:
 * We have a protocol called Container
    * It has a function that allows us to add things of `ItemType`
    * It returns the count of items in it
    * We can access elements using the subscript notation `container[0]...container[9]...etc`
    * ItemType is defined in the implementation (conforming type) of the Container protocol
 */

//: --- 
//: We don't care how Container is implemented as long as it can do the actions defined in the protocol
struct IntStack: Container {
    // original IntStack implementation
    var items = [Int]()
    mutating func push(item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    // conformance to the Container protocol
    typealias ItemType = Int
    mutating func append(item: Int) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
}

var stack = IntStack()
stack.append(0)
stack.append(1)
stack.append(3)

stack.items
stack.count
stack.pop()
stack.items
stack[0]

//: ---
//: Navigate: [Table Of Content](Introduction)
