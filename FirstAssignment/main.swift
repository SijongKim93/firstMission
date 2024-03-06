//
//  main.swift
//  FirstAssignment
//
//  Created by 김시종 on 3/6/24.
//

//import Foundation
//

// Lv 1
class Calculator {
    func calculate(_ operatorString: String, _ firstNumber: Double, _ secondNumber: Double) -> Double {
        switch operatorString {
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        case "*":
            return firstNumber * secondNumber
        case "/":
            guard secondNumber != 0 else {
                return 0
            }
            return firstNumber / secondNumber
        default:
            return 0
        }
    }
}

let calculator = Calculator()

let result1 = calculator.calculate("+", 10, 5)
let result2 = calculator.calculate("-", 10, 5)
let result3 = calculator.calculate("*", 10, 5)
let result4 = calculator.calculate("/", 10, 0)

let result: [Double] = [result1, result2, result3, result4]

for i in result {
    print("값은 \(i)입니다.")
    
}


