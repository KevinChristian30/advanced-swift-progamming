import Foundation

struct Developer {
  var platform: Platform
  var information: Information
}

enum Platform {
  case iOS
  case android
}

struct Information {
  var name, strengths, motivation: String
}

let robInformation = Information(name: "Rob", strengths: "DSA", motivation: "Change the world")
let rob = Developer(platform: .android, information: robInformation)
print(rob[keyPath: \Developer.information])
print(rob.information)