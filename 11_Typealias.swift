import Foundation

typealias Name = String

func insertName(name: Name) {
  print(name)
}

typealias GridPoint = (Int, Int)

func enterPoint(grid: GridPoint) {
  print(grid.0)
  print(grid.1)
}

enterPoint(grid: (5, 6))