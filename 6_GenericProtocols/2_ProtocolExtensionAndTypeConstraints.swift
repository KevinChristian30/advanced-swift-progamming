import Foundation

class LOL {}
func addLOLClassOnly<T: LOL>(array: [T]) {}
addLOLClassOnly(array: [LOL()])

protocol GenericProtocol {
  associatedtype myType
}

class SomeClass: GenericProtocol {
  typealias myType = String
}

class SomeStruct: GenericProtocol {
  typealias myType = Int
}

extension GenericProtocol where myType == String {
  static func introduce() {
    print("Hey")
  }
}

extension GenericProtocol where Self == SomeStruct {
  static func saySomething() {
    print("Something")
  }
}