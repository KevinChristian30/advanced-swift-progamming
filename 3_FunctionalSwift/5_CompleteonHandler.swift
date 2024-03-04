import Foundation
import UIKit

let firstVC = UIViewController()
let nextVC = UIViewController()

// Just like callbacks in other programming languages
firstVC.present(nextVC, animated: true, completion: {
  () in ...
})