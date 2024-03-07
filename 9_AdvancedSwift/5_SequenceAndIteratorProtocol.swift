import Foundation

let numbers = [1, 2, 3, 4, 5]
var iterator = numbers.makeIterator()
print(iterator.next()!)

// The concept of making your own iterator is the same, just extend the protocol