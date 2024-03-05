import Foundation

// The delegate pattern is used to pass data between objects
protocol PassDataDelegate {
  func passData(data: String)
}

class FirstVC {
  var delegate: PassDataDelegate?
}

class SecondVC: PassDataDelegate {
  func passData(data: String) {
    print("Something has happened")
    print(data)
  }
}

let firstVC = FirstVC()
let secondVC = SecondVC()

firstVC.delegate = secondVC
firstVC.delegate?.passData(data: "A bunch of contract")