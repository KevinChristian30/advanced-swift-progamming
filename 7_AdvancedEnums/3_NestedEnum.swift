import Foundation

// Nest like usual
enum A {
  enum B {
    case C
    case D
  }

  case p
}

let a: A = A.p