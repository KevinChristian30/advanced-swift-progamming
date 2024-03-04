import Foundation

// Just like any other object oriented programming language

class Vehicle {
  var description: String {
    return "Hello, I'm moving at 30km/hr"
  }

  func warning() {
    print("Be careful, I'm going pretty fast")
  }
}

class ToyCar: Vehicle {
  override var description: String {
    return super.description + ", but i am just a toy"
  }

  override func warning() {
    print("TOYYY!")
  }
}

let toy: ToyCar = ToyCar()
toy.warning()
print(toy.description)