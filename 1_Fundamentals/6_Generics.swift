import Foundation

func genericFunction<T>(value: T) {
  print(value)
}

genericFunction(value: "Kevin")
genericFunction(value: 10)

struct Family<T> {
  var members: [T] = []

  mutating func push(member: T) {
    members.append(member)
  }
}

var myFam = Family<String>()
myFam.push(member: "Bob")
print(myFam.members)

// Generic Extension
extension Family {
  var firstElement: T? {
    return members.isEmpty ? nil : members[0]
  }
}

print(myFam.firstElement ?? "Empty")

// Generics with type constraint
class LOL {}
class BabyLol: LOL {}

func addLOLClassOnly<T: LOL>(array: [T]) { }
addLOLClassOnly(array: [LOL(), LOL(), LOL()])
addLOLClassOnly(array: [BabyLol as LOL, BabyLol as LOL, BabyLol as LOL])