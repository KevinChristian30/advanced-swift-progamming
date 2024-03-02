import Foundation

// Optional Chaining in swift is just like in typescript

class Human {
  var name: String

  init(name: String) {
    self.name = name
  }

  func sayHello() {
    print("Hello, i am \(name)")
  }
}

class Apartment {
  var human: Human? = nil
}

var apartment = Apartment()
apartment.human = Human(name: "Kevin")
apartment.human?.sayHello()

if let name = apartment.human?.name {
  print(name)
} else {
  print("No human available")
}