import Foundation

protocol EastAsianable {
  var useChopsticks: Bool { get }
  var origin: String { get }
}

extension EastAsianable {
  var useChopsticks: Bool {
    return true
  }
}

class Korean: EastAsianable {
  var origin: String = "Korea"
}

class Japanese: EastAsianable {
  var origin: String = "Japan"
}

class Chinese: EastAsianable {
  var origin: String = "China"
}

let eastAsians: [EastAsianable] = [Korean(), Japanese(), Chinese()]
print(eastAsians)