//: Playground - noun: a place where people can play

import UIKit

// Factorial algorithm

func factorialOf(value: Int) -> Int {
    
    if value == 0 {
        return 1
    }
    
    var product: Int = 1
    for i in 1...value {
        product = product * i
    }
    
    return product
}

// Recursive-Factorial algorithm

func recursiveFactorialOf(value: Int) -> Int {
    
    if value == 0 {
        return 1
    }
    
    return value * recursiveFactorialOf(value: value - 1)
}

print(recursiveFactorialOf(value: 5))
print(factorialOf(value: 5))

