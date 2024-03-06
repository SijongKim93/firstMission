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
    func calculate(_ operation: String, _ firstNumber: Double, _ secondNumber: Double) -> Double? {
        switch operation {
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        case "*":
            return firstNumber * secondNumber
        case "/":
            return firstNumber / secondNumber
        default:
            return 0
        }
    }
}


