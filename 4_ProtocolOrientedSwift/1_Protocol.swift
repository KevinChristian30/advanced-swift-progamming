import Foundation

// Protocols are used to define a blueprint of methods, properties, and other requirements that a class, structure, or enumeration must adopt.
protocol Humanable {
  var name: String { get set }
  var race: String { get set }
  func sayHi()
}

struct Korean: Humanable {
  var name: String = "Kevin"
  var race: String = "Asian"
  func sayHi() {
    print("Hello")
  }
}
