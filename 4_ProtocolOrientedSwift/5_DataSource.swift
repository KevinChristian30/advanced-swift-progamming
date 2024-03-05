import Foundation

// The datasource pattern is used to communicate backward from the delegate to the delegator
// A datasource is just when the delegate retuns something so the data can be used by the delegator
protocol PassDataDelegate {
  func passData(data: String) -> String
}

class FirstVC {
  var delegate: PassDataDelegate?
}

class SecondVC: PassDataDelegate {
  func passData(data: String) -> String {
    print("Something has happened")
    return data
  }
}

let firstVC = FirstVC()
let secondVC = SecondVC()

firstVC.delegate = secondVC
let message = firstVC.delegate?.passData(data: "A bunch of contract")
print(message!)