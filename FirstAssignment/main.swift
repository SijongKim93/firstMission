//
//  main.swift
//  FirstAssignment
//
//  Created by 김시종 on 3/6/24.
//

//import Foundation
//

// Lv 1
class Calculator1 {
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

let calculator = Calculator1()

let result1 = calculator.calculate("+", 10, 5)
let result2 = calculator.calculate("-", 10, 5)
let result3 = calculator.calculate("*", 10, 5)
let result4 = calculator.calculate("/", 10, 0)

let result: [Double] = [result1, result2, result3, result4]

for i in result {
    print("값은 \(i)입니다.")
    
}



// Lv2

class Calculator2 {
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
        case "%":
            guard secondNumber != 0 else {
                return 0
            }
            return firstNumber.truncatingRemainder(dividingBy: secondNumber)
        default:
            return 0
        }
    }
}


let calculator2 = Calculator2()

let result11 = calculator2.calculate("%", 10, 3)
print(result11)



// Lv 3

class Calculator3 {
    
    var operatorString: String
    var firstNumber: Double
    var secondNumber: Double
    
    init(operatorString: String, firstNumber: Double, secondNumber: Double) {
        self.operatorString = operatorString
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func calculate() -> Double {
        return 0
        
    }
}


class AddOperation: Calculator3 {
   override func calculate() -> Double {
        return firstNumber + secondNumber
    }
}


class SubtractOperation: Calculator3 {
    override func calculate() -> Double {
        return firstNumber - secondNumber
    }
}


class MultiplyOperation: Calculator3 {
    override func calculate() -> Double {
        return firstNumber * secondNumber
    }
}


class DivideOperation: Calculator3 {
    override func calculate() -> Double {
        if secondNumber == 0 {
            return 0
        } else {
            return firstNumber / secondNumber
        }
    }
}


