import Foundation

// Normal function
struct HelloKitty {
  func saySomething() -> String {
    return "I'm cute"
  }
}

print(HelloKitty().saySomething())

// Subscripts
// Subscripts reduces readability, so be careful when using it
struct Weekdays {
  var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

  subscript(index: Int) -> String {
    return days[index]
  }
}

let myDays = Weekdays()
print(myDays[0])

class HealthInfo {
  let info: [String : Double] = [
    "Height": 183,
    "Body Fat": 12.5,
    "Weight": 76
  ]

  subscript(key: String) -> Double? {
    if let result = info[key] {
      return result
    }

    return nil
  }
}