import Foundation

func trailingClosure(number: Int, closure: () -> Void) {
  print("You've entered \(number)")
  closure()
}

// A trailing closure is just a closure passed in if it is the last closure in the argument
trailingClosure(number: 100) {
  print("Trailing Closure")
}