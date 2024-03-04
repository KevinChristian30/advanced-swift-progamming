import Foundation

// Set and tuples are basic data structures just like in python or any other language

var set: Set = [1, 1, 1, 2, 3]
var set2: Set = [3, 4, 5]
// print(set)

// What's cool in swift is the naming convention
// If the method name is a verb, it is a mutating method
// But if it's a noin, it is not a mutating method

// Returns
print(set.union(set2))
print(set)

// Returns
print(set.symmetricDifference(set2))
print(set)

// Returns
print(set.intersection(set2))
print(set)

// Mutating
print(set.subtract(set2))
print(set)

let tuple = (name: "Bob", score: 10)

print(tuple)
print(tuple.name)
print(tuple.score)