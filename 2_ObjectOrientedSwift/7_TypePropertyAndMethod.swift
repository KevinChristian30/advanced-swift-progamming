import Foundation

struct SomeStructure {
  // Static just like in other OOP languages
  static var storedProperty = "Some Value"
}
print(SomeStructure.storedProperty)

class Grandparent {
  static func staticMethod() { // Can't be overriden
    print("This is a static method")
  }

  class func classMethod() { // Can be overriden
    print("This ia a class method")
  }
}

// Differences between func, class func, and static func:
// func is just like in other OOP languages
// class func is like static func but can be overriden
// static func is like static func in other OOP languages