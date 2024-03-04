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

// Closures can be returned by functions
func returnClosure() -> ((Int, Int) -> Int) {
  return addClosure
}
let returnedClosure = returnClosure()

print(returnedClosure(10, 10))
print(returnClosure()(5, 5))

func returnClosureDirectly() -> ((Int, Int) -> Int) {
  return {
    (number1, number2) in number1 + number2
  }
}
let directlyReturnedClosure = returnClosureDirectly()
print(directlyReturnedClosure(10, 10))
print(returnClosureDirectly()(15, 15))

// Closures can be passed to functions
func insertClosureBlock(closureBlock: () -> String) {
  print(closureBlock())
}

insertClosureBlock(closureBlock: stringClosure)
insertClosureBlock(closureBlock: { () in return "String 1" })
insertClosureBlock(closureBlock: { return "String 2" })
insertClosureBlock(closureBlock: { "String 3" })