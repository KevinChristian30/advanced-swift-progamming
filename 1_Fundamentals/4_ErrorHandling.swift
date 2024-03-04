import Foundation

enum HeightError: Error {
  case maxHeight
  case minHeight
}

func checkHeightError(height: Int) throws {
  if height > 200 {
    throw HeightError.maxHeight
  } else if height < 140 {
    throw HeightError.minHeight
  } 
}

do {
  try checkHeightError(height: 150)
  print("Enjoy")
} catch HeightError.maxHeight {
  print("Max height error")
} catch HeightError.minHeight {
  print("Min height error")
}

enum NameError : Error {
  case noName
}

class Course {
  var name: String

  init(name: String) throws {
    if name == "" {
      throw NameError.noName
    } else {
      self.name = name
      print("You've created an object!")
    }
  }
}

// The difference between try?, try!, and try

// Normal try catch block
do {
  let myCourse = try Course(name: "")
} catch NameError.noName {
  print("Make sure the course has a name")
}

// If error is not thrown, return an optional
// If error is thrown, return nil
let newCourse = try? Course(name: "Swift")

// Force unwrapping
let anotherCourse = try! Course(name: "Swift")
