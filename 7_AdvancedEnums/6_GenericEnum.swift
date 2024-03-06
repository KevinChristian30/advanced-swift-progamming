import Foundation

enum Information<T, U> {
  case name(T)
  case website(T)
  case age(U)
}
print(Information<Int, String>.name(10))