import Foundation

public protocol Duck {
    func quack() -> String
    func walk()
    func getMe() -> Self
}

// Note that I am using protocol extension to add methods
public extension Duck {
    public func quack() -> String {
        return "Quack"
    }
    
    public func walk() {
        // ... do nothing
    }
}