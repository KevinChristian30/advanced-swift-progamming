import Foundation

class Human {
  var name: String
  init(name: String) {
    self.name = name
  }

  convenience init() {
    self.init(name: "Kevin")
  }
}

let kevin = Human(name: "Kevin Christian")
print(kevin.name)

let human = Human()
print(human.name)