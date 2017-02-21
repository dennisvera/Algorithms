//: Playground - noun: a place where people can play

import UIKit

//Factorial
func factorialOfValue(value: UInt) -> UInt {
    
    if value == 0 {
        return 1
    }
    
    var product: UInt = 1
    for i in 1...value {
        product = product * i
    }

    return product
}

factorialOfValue(value: 5)

//Recursive Factorial
func recursiveFactorialOfValue(value: UInt) -> UInt {
    
    if value == 0 {
        return 1
    }
    
    print(value)
    return value * recursiveFactorialOfValue(value: value - 1)
}

recursiveFactorialOfValue(value: 5)


