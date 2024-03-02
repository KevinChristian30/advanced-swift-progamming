import Foundation

enum HeightError: Error {
  case maxHeight
  case minHeight
}

func checkHeightError(height: Int) throws {
  if height > 200 {
    throw HeightError.maxHeight
  } else if height < 140 {
    throw HeightError.minHeight
  } 
}

do {
  try checkHeightError(height: 150)
  print("Enjoy")
} catch HeightError.maxHeight {
  print("Max height error")
} catch HeightError.minHeight {
  print("Min height error")
}