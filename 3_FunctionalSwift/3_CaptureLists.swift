import Foundation

var a = 0
var b = 0

var closureArray:[() -> ()] = []
var i = 0

for _ in 1...5 {
  closureArray.append {
    print(i)
  }
  i += 1
}
closureArray[0]() // 5
closureArray[1]() // 5
closureArray[2]() // 5
closureArray[3]() // 5
closureArray[4]() // 5

// The unique characteristics of closures is that it is reference type, 
// So i, is a reference to the i
// And here, c and d is also referenced
var c = 1
var d = 2
let smartClosure: () -> () = {
  () in print(c, d)
}
smartClosure()

// But, if we want to make a copy, we can do this:
let smarterClosure: () -> () = {
  [c, d] in print(c, d)
}
smarterClosure()

c = 10
d = 20

smarterClosure()

// So, to make a smartClosureArray we can do this:
var smartClosureArray:[() -> ()] = []

for j in 1...5 {
  smartClosureArray.append { [j] in
    print(j)
  }
}
smartClosureArray[0]() // 1
smartClosureArray[1]() // 2
smartClosureArray[2]() // 3
smartClosureArray[3]() // 4
smartClosureArray[4]() // 5
