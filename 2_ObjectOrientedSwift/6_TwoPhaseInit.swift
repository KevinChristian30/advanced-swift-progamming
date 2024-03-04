import Foundation

struct NuclearRocket {
  var meters: Double
  var liters: Double

  init(meters: Double, liters: Double) {
    self.meters = meters
    self.liters = liters
  }

  init(ft: Double, gallon: Double) {
    let convertedMeters = ft / 3.28
    let convertedLitters = gallon * 3.78

    self.init(meters: convertedMeters, liters: convertedLitters)
  }
}

var rocket = NuclearRocket(meters: 20, liters: 80)
print(rocket.meters)
print(rocket.liters)