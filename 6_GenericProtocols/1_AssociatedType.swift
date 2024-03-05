import Foundation

// Standard generics

struct GenericStruct<T> {
  var property: T
}

let a = GenericStruct<Bool>()
let b = GenericStruct(property: "Kevin")