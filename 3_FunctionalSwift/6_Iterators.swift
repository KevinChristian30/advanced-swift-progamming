import Foundation

print(Array(1...10).filter { number in number % 2 == 0 })
print(Array(1...10).filter { $0 % 2 == 0 })

print(Array(1...10).map { $0 + 10 })

print(Array(1...10).reduce(1, $0 + $1))
