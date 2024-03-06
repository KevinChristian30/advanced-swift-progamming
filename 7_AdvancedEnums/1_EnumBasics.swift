import Foundation

// There are three types of enumeration
// - Basic enumerations
// - Enumerations that have raw values
// - Enumerations that have associated values

// Basic Enumerations
enum Compass {
  case north
  case south
  case east
  case west
}

enum Planet {
  case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let earth = Planet.earth // Init

// Raw Value
enum Food: String {
  case pizza
  case banana
  case chicken
  case bigMac
}

let stringValueFromPizza = Food.pizza.rawValue
print(stringValueFromPizza)

// Associated Value
enum Barcode {
  case upc(Int, Int, Int, Int)
  case qrCode(String)
}

var qrCode = Barcode.qrCode("ABC")
var upcCode = Barcode.upc(1, 2, 3, 4)
print(qrCode)
print(upcCode)