import Foundation

func enterName(name: String) {
  if name.isEmpty {
    assert(false, "You must enter a full valid name")
    assertionFailure("Message")
  }

  assert(true)
}
enterName(name: "Kevin")

// There is also precondition, preconditionFailure, and fatalError
// The difference between them is the compiler will ignore some of them
// According to the build, there are 3 ways to compile a swift file,
// for development, for release, and for testing