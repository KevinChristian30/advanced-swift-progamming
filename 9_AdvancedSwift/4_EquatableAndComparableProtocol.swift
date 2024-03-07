import Foundation

struct Blog {
  let author: String
  let title: String
}

// Just like overriding the .equals() in java
// Comparable is the same, just use the protocol
extension Blog: Equatable {
  static func ==(lhs: Blog, rhs: Blog) -> Bool {
    return lhs.author == rhs.author && lhs.title == rhs.title
  }
}

print(Blog(author: "A", title: "B") == Blog(author: "A", title: "B"))