import Foundation

public class Child: Person, Duck {
    public func quack() -> String {
        return "Quack like a duck"
    }
    
    public func walk() {
        print("Walk Like a duck")
    }
    
    public func getMe() -> Self {
        return self
    }
}