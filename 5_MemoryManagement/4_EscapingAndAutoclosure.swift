import Foundation

var closureblocks: [() -> Void] = []

// func funcWithClosure(closure: () -> Void) { // This throws error
//   closureblocks.append(closure)
// }

// If the closure can be executed after the function finished, we need to use @escaping
// The closure can be executed by closureBlocks[index]()
func funcWithClosuresWithEscaping(closure: @escaping () -> Void) {
  closureblocks.append(closure)
}

func funcWithNetworkingClosure(closure: @escaping () -> Void) {
  DispatchQueue.global().async {
    closure() // The closure block can be executed after the function returns because it is in another thread
  }

  print("Here")
}

funcWithNetworkingClosure {
  for _ in 1...100 {
    print("Downloading")
  }
}

// The key takeaway is that closures are being deallocated after it is being used
// If after the function is finished, and we still want to use the closure, we need to use escaping so the closure is still stored
// But because it is not deallocated, there is a posibility of retention cycle

// Autoclosure is just syntax sugar
func checkIDCard(hasCard: () -> Bool) {
  if hasCard() {
    print("You have an id")
  }
}

checkIDCard(hasCard: { true })

func checkIDCardAutoclosure(hasCard: @autoclosure () -> Bool) {
  if hasCard() {
    print("You have an id")
  }
}
checkIDCardAutoclosure(hasCard: true)