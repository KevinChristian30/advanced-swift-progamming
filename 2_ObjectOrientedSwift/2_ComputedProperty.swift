import Foundation

// Gettable property is readonly

class NumberClass {
  var readableNumber: Double { // This a computed property
    get {
      return 10
    }
  }
}

print(NumberClass().readableNumber)

// Settable property is read and write
var radius: Double = 10
var diameter: Double {
  get {
    return radius * 2
  }

  set {
    radius = newValue / 2
  }
}

diameter = 100
print(diameter)