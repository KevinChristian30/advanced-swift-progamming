import Foundation 

// References as parameters
func enterSomething(_ a: inout Int) {
  a += 1
  print(a)
}

var number = 10
enterSomething(&number)
print(number)

// Design prefix and postfix operators
prefix operator |
prefix func |(number: Double) -> Double {
  return sqrt(number)
}

print(|100)

// Infix operators
precedencegroup MyOperatorPrecedence {
  higherThan: AdditionPrecedence
  lowerThan: MultiplicationPrecedence
  associativity: left
}

infix operator **: MyOperatorPrecedence
func **(left: Double, right: Double) -> Double {
  return pow(left, right)
}

print(2 ** 3)