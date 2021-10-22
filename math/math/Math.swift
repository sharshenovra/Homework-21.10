import Darwin
import Foundation
class Math {

func multi(number1: Int, number2: Int) -> Int? {
            var result = number1
            if number1 != 0 && number2 != 0 {
                result = number1 * number2
                print("\(number1) умножить на \(number2) = \(result)")
            }
                else if number1 == 0 || number2 == 0 {
                    result = number1 * number2
                    print("При умножении любого числа на 0 будет 0")
                }
         return result
     }
    func power(numberOne: Double, numberTwo: Double) -> Double {
        var result = numberOne
        if numberTwo > 0 {
            for _ in 0...Int(numberTwo) - 2 {
                result = result * numberOne
            }
        } else {
            for _ in 0...((Int(numberTwo) * (-1)) - 2) {
                result = result * numberOne
            }
            result = 1 / result
        }
        print("\(numberOne) в степени \(numberTwo) = \(result)")
        return result
}
    func root(numberToRoot: Int) -> Double {
        var result = Double(numberToRoot)
        for item in 0...numberToRoot {
            if item * item < numberToRoot{
                result = Double(item) + 1
            }
            }
        print("Квадратный корень числа \(numberToRoot) = \(result)")
        return result
        }
    func plus(number01: Double, number02: Double) -> Double {
        var result: Double = 0
    result = number01 + number02
        print("\(number01) прибавить \(number02) = \(result)")
    return result
    }
    func minus(numb1: Double, numb2: Double) -> Double {
        var result: Double = 0
    result = numb1 - numb2
        print("\(numb1) отнять \(numb2) = \(result)")
    return result
}
    func perc(num1: Int, percent: Int) -> Double {
        var result: Double = 0.0
       result = Double((percent * num1) / 100)
        print("\(percent) процентов от числа \(num1) = \(result)")
        return result
    }
    func sinus(degree: Double) -> Double {
        var result: Double = 0.0
        result = (((4 * degree) * (180 - degree)) / (40500 - (degree * (180 - degree))))
        print("Синус угла \(degree) градусов = \(result)")
return result
    }
    func cosinus(degree1: Double) -> Double {
        var result: Double = 0.0
        var sin1: Double = sinus(degree: degree1)
        var sin2: Double = sin1 * sin1
        var sin3: Double = 1.0 - sin2
        var sin4: Double = root(numberToRoot: Int(sin3))
        result = sin4
        print("Косинус угла \(degree1) градусов = \(result)")
        return result
    }
}
