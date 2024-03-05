import Foundation

// We can use protocol extension to provide default implementation
protocol MathGenius {
  func calculateGPA()
}

extension MathGenius {
  func calculateGPA() {
    print("I'm too cool for school")
  }
}

struct Bob: MathGenius {}

let person: Bob = Bob()
person.calculateGPA()