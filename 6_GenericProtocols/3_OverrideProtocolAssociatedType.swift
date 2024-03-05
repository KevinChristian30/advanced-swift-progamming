import Foundation

protocol FamilyProtocol {
  associatedtype familyType
  var familyType: [familyType] { get set }
}

struct Myfamily<T> FamilyProtocol {
  var familyMembers: [T] = []
}

let family = Myfamily(familyMembers: ["Me"])