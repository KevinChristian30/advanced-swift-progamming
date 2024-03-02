import Foundation

let canDrink = false

func checkDrinkingAges() {
  guard canDrink else {
    // This block of code will only run if canDrink is false
    print("You can't drink")
    return 
  }

  print("You can drink")
}
checkDrinkingAges()

// We can use guards to unwrap optionals
func checkName(name: String?) {
  guard let name = name else {
    print("Name is nil")
    return
  }

  print(name)
}
let name: String? = nil
checkName(name: name)

// Unwrap multiple optionals
let one: String? = nil
let two: String? = nil
let three: String? = nil

func unwrap() {
  if let one = one, let two = two, let three = three {
    print("Unwrapped all")
  } else {
    print("Something is nil")
  }
}
unwrap()

func unwrapWithGuard() {
  guard let one = one, let two = two, let three = three else {
    print("Something is nil")
    return
  }

  print("Unwrapped all")
}
unwrapWithGuard()

// Defering is putting off an action or an vent to a later time, just like including a javascript script
func simpleDefer() {
  defer {
    print("Later")
  }

  print("Now")
}
simpleDefer()