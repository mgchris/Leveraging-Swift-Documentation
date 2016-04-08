import Foundation

/**
 - returns: The sum of the parameters
 */
public func addInt(a: Int, b: Int) -> Int {
    return a + b
}

/**
 - returns: The sum of the parameters
 */
public func addFloat(a: Float, _ b: Float) -> Float {
    return a + b
}

/**
 - parameter b: Default value is 2
 - returns: The sum of the parameters
 */
public func addTwo(a: Int, b: Int = 2) -> Int {
    return a + b
}

/**
 - returns: The sum of the parameters
 */
public func addInts(numbers: Int...) -> Int {
    return numbers.reduce(0, combine: { (sum, num) in return sum + num })
}

/**
 - returns: The sum of the parameters
 */
public func addExternalInt(rhs a: Int, lhs b: Int) -> Int {
    return a + b
}

/**
 - returns: Returns a tuple with the passed in parameters as the first two values and the final item as the sum
 */
public func addTuple(a: Int, _ b: Int) -> (a: Int, b: Int, c: Int) {
    return (a, b, a + b)
}


//: ---
/**
 Moves the value in one variable and put it in the other
 */
public func swapTwoStrings(inout a: String, inout _ b: String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

/**
 Moves the value in one variable and put it in the other
 */
public func swapTwoDoubles(inout a: Double, inout _ b: Double) {
    let temporaryA = a
    a = b
    b = temporaryA
}

//: ---


/**
 Pass in a `closure` and execute it
 */
public func executeClosure(a: () -> ()) {
    a()
}


/**
 Takes two closures and runs them
 */
public func closureDouble(start: () -> (), completed: () -> ()) {
    start()
    completed()
}


/**
 Pass in a bunch of `closure` that are the same but look a little different.  This will call each closure before finishing.
 - returns: A closure that will return "Done"
 */
public func closureCrazy(a: Void -> Void, b: () -> Void, c: Void -> (), d: () -> ()) -> () -> String {
    a()
    b()
    c()
    d()
    return { return "Done" }
}
