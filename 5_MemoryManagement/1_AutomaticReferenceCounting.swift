/*

Swift uses Automatic Reference Counting instead of a garbage collector.

It counts how many times a reference in the heap is referenced in the stack.
If the count is zero, then the reference is automatically deallocated.

*/

import Foundation

class Passport {
  var human: Human?
  let citizenship: String

  init(citizenship: String) {
    self.citizenship = citizenship
    print("I am allocated")
  }

  deinit {
    print("I am deallocated")
  }
}

class Human {
}

let passport = Passport(citizenship: "HAHAHA")
print(passport.citizenship)