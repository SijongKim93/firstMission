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
    
    func calculate(_ operatorString: String, _ firstNumber: Double, _ secondNumber: Double) -> Double {
        return 0
        
    }
}


class AddOperation: Calculator3 {
    func calculate(_ firstNumber: Double, _ secondNumber:Double) -> Double {
        return firstNumber + secondNumber
    }
}


class SubtractOperation: Calculator3 {
    func calculate(_ firstNumber: Double, _ secondNumber:Double) -> Double {
        return firstNumber - secondNumber
    }
}


class MultiplyOperation: Calculator3 {
    func calculate(_ firstNumber: Double, _ secondNumber:Double) -> Double {
        return firstNumber * secondNumber
    }
}


class DivideOperation: Calculator3 {
    func calculate(_ firstNumber: Double, _ secondNumber:Double) -> Double {
        if secondNumber == 0 {
            return 0
        } else {
            return firstNumber / secondNumber
        }
    }
}

let addOperation = AddOperation()
let subtractOperation = SubtractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()

print(addOperation.calculate(10, 5))
print(subtractOperation.calculate(10, 5))
print(multiplyOperation.calculate(10, 5))
print(divideOperation.calculate(10, 5))
