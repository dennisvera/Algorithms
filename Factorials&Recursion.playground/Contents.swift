//: Playground - noun: a place where people can play

import UIKit

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

//print(factorialOfValue(value: 3))
//factorialOfValue(value: 5)


func recursiveFactorialOfValue(value: UInt) -> UInt {
    
    if value == 0 {
        return 1
    }
    
    print(value)
    
    return value * recursiveFactorialOfValue(value: value - 1)
}

recursiveFactorialOfValue(value: 4)


