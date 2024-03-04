import Foundation

class Blog {
  let name: String
  init?(name: String) {
    if name.isEmpty {
      return nil
    }

    self.name = name
  }
}

let blog = Blog(name: "Kevin")
print(blog?.name ?? "Name is nil")