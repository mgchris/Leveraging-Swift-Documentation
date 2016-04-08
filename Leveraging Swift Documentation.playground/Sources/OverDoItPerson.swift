import Foundation

/**
 This Class is suppose to show how not to take advantage of swift documentation
 - author: Christopher Evans
 */
public class OverDoItPerson {
    
    ///  This repersent the age of this person. This is an `Int` value that default to `0`.
    var age: Int = 0
    
    /// This is the name of the person.  The default value is `Bob`
    var name: String = ""
    
    /// An array of things that this person likes.
    var favoriteThings = [String]()
    
    /// This is so we can create this object.  This is the initializer of this object.
    public init() {
        
    }
    
    /**
     A method that will cause this object to say something by returing what the object will say as a string.
     ````
     var string = person.saySomething()
     ````
     - returns: String that contains the name and age of this object
     */
    func saySomething() -> String {
        return ("My name is " + name + " and I am \(age) years old")
    }
    
    /**
     Searches the list of things this object likes and see if it finds a match.
     - parameter item: The item to see if this object likes. If this parameter is nil, this will return false.
     - returns: `true` if found else `false`
     - warning: This isn't thread safe
    */
    func likeThing(item: String?) -> Bool {
        guard let like = item else { return false }
        
        return favoriteThings.contains(like)
    }
    
    
    /**
     This person will first run `doSomething` and then run `takeABreak`
     - parameter doSomething: Will run this Closures first
     - parameter takeABreak: Will run this Closures after the first one
    */
    func doWork(doSomething: () -> (), takeABreak: () -> ()) {
        doSomething()
        takeABreak()
    }
}