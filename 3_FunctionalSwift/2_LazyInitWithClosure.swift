import Foundation

// Unconventional Way
let box: UIView = {
  let view = UIView()
  return view
}()

// Create a button
let buttonSize = CGRect(x: 0, y: 0, width: 100, height: 100)
let button = UIButton(frame: buttonSize)
button.backgroundColor = .black
button.titleLabel?.text = "Bob"
button.titleLabel?.textColor = .white

// We can create a function to create a buton
func createButton(title: String) -> UIButton {
  let button = UIButton(frame: buttonSize)
  button.backgroundColor = .black
  button.titleLabel?.text = title
  button.titleLabel?.textColor = .white
  return button
}

// Use closure to create a button
let button: UIButton = {
  let button = UIButton(frame: buttonSize)
  button.backgroundColor = .black
  button.titleLabel?.text = title
  button.titleLabel?.textColor = .white
  return button
}()

// Lazy initialization
class IntenseMathProblem {
  lazy var complexNumber: Int = {
    1 * 1
  }()
}

let problem = IntenseMathProblem() // complexNumber is not initialized
print(problem.complexNumber) // complexNumber is initialized when accessed