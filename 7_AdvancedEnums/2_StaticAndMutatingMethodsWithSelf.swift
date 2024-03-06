import Foundation

enum Storyboard: String {
  case profile
  case setting
  case newsfeed

  var identifier: String {
    return self.rawValue
  }
}

let profile = Storyboard.profile
print(profile.identifier)

enum MealProcess: String {
  case breakfast, lunch, dinner

  var description: String {
    return self.rawValue
  }

  mutating func nextMeal() {
    switch self {
      case .breakfast:
        self = .lunch
      case .lunch:
        self = .dinner
      case .dinner:
        self = .breakfast
    }
  }
}

var meal = MealProcess.breakfast
print(meal.description)
meal.nextMeal()
print(meal.description)

enum AppleDevices: String {
  case iWatch, iPhone, iMac, MacPro

  static func getProduct(_ name: String) -> AppleDevices? {
    return AppleDevices(rawValue: name)
  }

  static func getAppleDevice(_ name: String) -> AppleDevices? {
    switch name {
      case "iWatch", "iPhone", "iMac", "MacPro":
        return getProduct(name)
      default:
        return nil
    } 
  }
}
