import Foundation

// Optionals just like any other language that supports it
let url: String? = "url"

// We can need to unwrap the optional before using it
print(url!) // Force unwrapping 

if let url = url { // Implicit unwrapping (binding)
  print(url)
} else {
  print("There is no url")
}