import Foundation

class Human {
  func introduce() {
    print("Hi, I'm a human")
  }
}

class Korean: Human {
  func singGangNamStyle() {
    print("Gangnam Style")
  }
}

let bob = Korean()
bob.introduce()
bob.singGangNamStyle()

// Upcasting
let newBob = bob as Human
newBob.introduce()

// Downcasting
var name = "Bob" as Any
var number = 20 as Any

var anyArray = [name, number]

// Downcasting only occurs after upcasting, and is specific
// The difference of as, as? and as!

// Implicit downcasting, returns an optional
let newValue = anyArray[1] as? Int
let anotherValue = anyArray[1] as? String

// Force downcasting
let dangerousValue = anyArray[1] as! Int