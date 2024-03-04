import Foundation

class Human {
  var name: String
  init(name: String) {
    self.name = name
  }
}

let human: Human = Human(name: "Kevin")
print(human.name)

// Classes are allocated in the heap, structs are allocated in the stack
// Just like any other language, consider references and values

// Swift does not use garbage collection. 
// It uses automatic reference counting (ARC). 
// Objects are released and deallocated as soon as the last strong reference is removed 
// (as opposed to garbage collection, where this clean-up happens at a time at the discretion 
// of the memory management system).