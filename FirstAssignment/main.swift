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
    func add(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
    func minus(fistNumber: Int, secondNumber: Int) -> Int {
        return fistNumber - secondNumber
    }
    func multiply(fistNumber: Int, secondNumber: Int) -> Int {
        return fistNumber * secondNumber
    }
    func divide(fistNumber: Int, secondNumber: Int) -> Double {
        if secondNumber == 0 {
            return 0.0
        } else {
            return Double(fistNumber) / Double(secondNumber)   // Double(firstNumber / secondNumber) 와는 매우 다르다. 숙지
        }
    }
}

var calculator = Calculator1()

let add1 = calculator.add(firstNumber: 3, secondNumber: 2)
let minus1 = calculator.minus(fistNumber: 10, secondNumber: 7)
let mult1 = calculator.multiply(fistNumber: 13, secondNumber: 2)
let divi1 = calculator.divide(fistNumber: 13, secondNumber: 3)

print(add1, minus1, mult1, divi1)

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
    
    var firstNumber: Double
    var secondNumber: Double
    
    init(_ firstNumber: Double, _ secondNumber: Double) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }

}


class AddOperation: Calculator3 {
   func calculate() -> Double {
        return firstNumber + secondNumber
    }
}


class SubtractOperation: Calculator3 {
    func calculate() -> Double {
        return firstNumber - secondNumber
    }
}


class MultiplyOperation: Calculator3 {
    func calculate() -> Double {
        return firstNumber * secondNumber
    }
}


class DivideOperation: Calculator3 {
    func calculate() -> Double {
        if secondNumber == 0 {
            return 0
        } else {
            return firstNumber / secondNumber
        }
    }
}

let addResult = AddOperation(10, 5)
let subtractResult = SubtractOperation(10, 5)
let multiplyResult = MultiplyOperation(10, 5)
let divideResult = DivideOperation(10, 0)

let add = addResult.calculate()
let sub = subtractResult.calculate()
let mul = multiplyResult.calculate()
let divi = divideResult.calculate()

print(add)
print(sub)
print(mul)
print(divi)


// Lv4

class AbstractOperation {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        fatalError("재정의 필요")
    }
}

class Calculator4 {
    var result: Double
    
    init(result: Double) {
        self.result = result
    }
    
    func calculate(operation: AbstractOperation, _ firstNumber: Double, _ secondNumber: Double) -> Double {
            return operation.operate(firstNumber,secondNumber)
        }
}


class AddOperation4: AbstractOperation {
    override func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

class SubtractOperation4: AbstractOperation {
    override func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation4: AbstractOperation {
    override func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}

class DivideOperation4: AbstractOperation {
    override func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        if secondNumber == 0 {
            return 0
        } else {
            return firstNumber / secondNumber
        }
    }
}


let calculator4 = Calculator4(result: 0)

let addOperation4 = AddOperation4()
let subtractOperation4 = SubtractOperation4()
let multiplyOperation4 = MultiplyOperation4()
let divideOperation4 = DivideOperation4()

let result1111 = calculator4.calculate(operation: addOperation4, 10, 7)
let result2222 = calculator4.calculate(operation: subtractOperation4, 17, 5)
let result3333 = calculator4.calculate(operation: multiplyOperation4, 10, 5)
let result4444 = calculator4.calculate(operation: divideOperation4, 10, 5)

print(result1111)
print(result2222)
print(result3333)
print(result4444)
