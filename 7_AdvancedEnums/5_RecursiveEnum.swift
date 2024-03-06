import Foundation

indirect enum ArithmeticExpression {
  case number(Int)
  case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let num = ArithmeticExpression.number(5)
let multiplication = ArithmeticExpression.multiplication(num, num)