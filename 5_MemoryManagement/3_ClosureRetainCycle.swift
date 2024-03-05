import Foundation

class MyClass {
  var closure: (() -> ())?
  var name: String = "Kevin"

  init() {
    // closure = {
    // print(self?.name) // The self is creating a closure retain cycle
    // }
    closure = {
      [weak self] in
      print(self?.name ?? "")
    }
  }

  deinit {
    print("Deallocated")
  }
}

var myClass: MyClass?  = MyClass()
myClass?.closure!()
myClass = nil

// We can also use unowned
class Owner {
  var card: CreditCard?
}

class CreditCard {
  unowned let owner: Owner

  init(owner: Owner) {
    self.owner = owner
  }

  deinit {
    print("Card Deallocated")
  }
}

var owner: Owner? = Owner()
var card: CreditCard? = CreditCard(owner: owner!)
owner?.card = card
owner = nil
print(card?.owner) // Throws error