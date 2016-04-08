/*:
 # Dissecting
 ---
 Let dig into somewhat harder documentation to read and see if we can get an idea of what it is doing.
 
 */

import Foundation

// NOTE: Take some to practice what we learned about 

/*:
 ---
 ````
 @warn_unused_result func map<T>(@noescape _ transform: (Self.Base.Generator.Element) -> T) -> [T]
 ````
 */


/*:
 ---
 ````
 @warn_unused_result func reduce<T>(_ initial: T, @noescape combine combine: (T, Self.Generator.Element) throws -> T) rethrows -> T
 ````
 */


/*:
 ---
 ````
 func getBytes(inout buffer: [UInt8], maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding: NSStringEncoding, options: NSStringEncodingConversionOptions, range: Range<Index>, remainingRange leftover: UnsafeMutablePointer<Range<Index>>) -> Bool
 ````
 */


/*:
 ---
 ````
 func elementsEqual<OtherSequence : SequenceType where OtherSequence.Generator.Element == Generator.Element>(other: OtherSequence, @noescape isEquivalent: (Self.Generator.Element, Self.Generator.Element) throws -> Bool) rethrows -> Bool
 ````
 */


//: ---
//: Navigate: [Table Of Content](Introduction)
