import Foundation

var grade: Int = 80 {
  willSet(newGrade) {
    print("This is run just before the value is stored")
  }
  didSet(oldGrade) {
    print("This is run just after the new value is stored")
  }
}

print(grade)
grade = 10
print(grade)

var totalSteps: Int = 20 {
  willSet(newTotalSteps) {
    print("About to set totalSteps to \(newTotalSteps)")
  }
  didSet(oldTotalSteps) {
    print("Changed total steps from \(oldTotalSteps) to \(totalSteps)")
  }
}
totalSteps = 50