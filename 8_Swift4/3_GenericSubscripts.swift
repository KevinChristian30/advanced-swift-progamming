import Foundation

struct JSON {
  private var storage: [String: Any]

  init(_ dictionary: [String: Any]) {
    self.storage = dictionary
  }

  subscript<T>(key: String) -> T? {
    return storage[key] as? T
  }
}

let republicOfKorea = JSON([
  "capital": "Seoul"
])
let capital: String? = republicOfKorea["capital"]
print(capital ?? "")