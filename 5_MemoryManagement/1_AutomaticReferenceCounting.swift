/*

Swift uses Automatic Reference Counting instead of a garbage collector.

It counts how many times a reference in the heap is referenced in the stack.
If the count is zero, then the reference is automatically deallocated.

But, it is important to avoid memory leaks/retention cycles.
Retention cycles happen when there's a cross reference between objects.
For example, a passport has a human, and a human has a passport,
where both reference is in the stack.

*/

import Foundation

class Passport {
  var human: Human?

  init(citizenship: String) {
    self.citizenship = citizenship
    print("I am allocated")
  }

  deinit {
    print("I am deallocated")
  }
}

class Human {
  passport: Passport?
}

let passport = Passport()
let human = Human()
passport.human = human
human.passport = passport // Retention cycle

// The solution is making the variable weak
class Passport {
  weak var human: Human?

  init(citizenship: String) {
    self.citizenship = citizenship
    print("I am allocated")
  }

  deinit {
    print("I am deallocated")
  }
}

// By making it weak, we are referencing it, but it doesn't add up to the reference count
// So the reference from one heap allocated memory to another doesn't add up to the total
// Which makes the only reference that the human object can have is from the stack