import Foundation

enum Gadget<T> {
  case smartphone
  case laptop
  case fridge
  case others(T)
}

enum Company<T> {
  case Samsung
  case Apple
  case Sony
  case others(T)
}

struct Product<T> {
  var company: Company<T>
  var gadget: Gadget<T>
  var reviews: [T]

  init(enterCompany: Company<T>, enterGadget: Gadget<T>, enterReviews: [T]) {
    company = enterCompany
    gadget = enterGadget
    reviews = enterReviews
  }
}

// By nesting, we only have to specify the generic once
struct NestedProduct<T> {
  // Normal enums are within one another, so there is a cyclical dependency
  // By making it indirect, it has a reference to each other to break the cyclical dependency
  // This is a bug in swift
  indirect enum Gadget { 
    case smartphone
    case laptop
    case fridge
    case others(T)
  }

  indirect enum Company {
    case Samsung
    case Apple
    case Sony
    case others(T)
  }
  
  var company: Company
  var gadget: Gadget
  var reviews: [T]

  init(enterCompany: Company, enterGadget: Gadget, enterReviews: [T]) {
    company = enterCompany
    gadget = enterGadget
    reviews = enterReviews
  }
}
