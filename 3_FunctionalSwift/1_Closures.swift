import Foundation

func addTwoNumbers(number1: Int, number2: Int) -> Int {
  return number1 + number2
}

var addFunction = addTwoNumbers
print(addFunction(10, 20))

var addClosure: (Int, Int) -> Int = {
  (number1: Int, number2: Int) in 
  return number1 + number2
}
print(addClosure(10, 10))

var addClosureWithoutType = {
  (number1: Int, number2: Int) in 
  return number1 + number2
}
print(addClosureWithoutType(10, 10))

var addClosureWithoutReturnKeyword = {
  (number1: Int, number2: Int) in 
  number1 + number2
}
print(addClosureWithoutReturnKeyword(10, 10))

var addClosureShorthand: (Int, Int) -> Int = { $0 + $1 }
print(addClosureShorthand(10, 10))

var stringClosure: () -> String = {
  () in "String"
}
print(stringClosure())

var stringClosureWithoutParameter: () -> String = { "String" }
print(stringClosureWithoutParameter())