//: Playground - noun: a place where people can play

import UIKit

// FizzBuzz algorithm 

var oneHundred = [Int]()
for i in 1...100 {
    oneHundred.append(i)
}

for num in oneHundred {
    if num % 3 == 0 && num % 5 == 0 {
       print("\(num) fizzbuzz")
        
    } else if num % 3 == 0 {
        print("\(num) fizz")
    
    } else if num % 5 == 0 {
        print("\(num) buzz")
        
    } else {
        print(num)
    }
}
