import Foundation

struct Bob {
  var name = "Bob"
  var skill = "Work"

  init() {}
}

extension Bob {
  var age: Int {
    return 10
  }
  var description: String {
    let myName = self.name
    let mySkill = self.skill

    return "I'm \(myName), i know \(mySkill)"
  }
}

print(Bob().description)
print(Bob().age)