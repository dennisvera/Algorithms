//: Playground - noun: a place where people can play

import UIKit

// FOR-LOOP solutions

// 1. filter into [3, 3, 3], then filter into [2, 4]

let numbers = [1, 2, 3, 4, 3, 3]
var filteredThreeNum = [Int]()
var filteredDivisibleByTwoNums = [Int]()

for number in numbers {
    if number == 3 {
        filteredThreeNum.append(number)
    } else if number % 2 == 0 {
        filteredDivisibleByTwoNums.append(number)
    }
}
filteredThreeNum
filteredDivisibleByTwoNums

// 2. transform [1, 2, 3, 4] -> [2, 4, 6, 8] using map

var multiplyByTwo = [Int]()
for number in [1, 2, 3, 4] {
multiplyByTwo.append(number * 2)
}
multiplyByTwo

// 3. sum [1, 2, 3, 4] -> 10 using reduce

var sumElements = 0
for number in [1, 2, 3, 4] {
    sumElements += number
}
sumElements


// HIGHER ORDER solutions
// * The foor-loop solutions create "var" variables that are MUTABLE. This is less SAFE than the Higher Order solutions that cannot be mutated, they use "let" variables.

// 1. filter into [3, 3, 3], then filter into [2, 4]

let filteredThree = numbers.filter({return $0 == 3})
let filteredDivbleByTwo = numbers.filter({return $0 % 2 == 0})
filteredThree
filteredDivbleByTwo

// 2. transfrom [1, 2, 3, 4] -> [2, 4, 6, 8] using map

let transformed = [1, 2, 3, 4].map({return $0 * 2})
transformed

// 3. sum [1, 2, 3, 4] -> 10 using reduce

let sum = [1, 2, 3, 4].reduce(0, {sum, number in sum + number})
sum


