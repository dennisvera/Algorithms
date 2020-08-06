import UIKit

/// `Algorithm:` - Higher Order Functions

// For-Loops Solutions

// 1. Filter numbers array into [3, 3, 3], then filter into [2, 4]

let numbers = [1, 2, 3, 4, 3, 3]

var threeNumberArray = [Int]()
var evenNumbersArray = [Int]()

for number in numbers {
  if number == 3 {
    threeNumberArray.append(number)
  } else if number % 2 == 0 {
    evenNumbersArray.append(number)
  }
}

threeNumberArray
evenNumbersArray

// 2. Transform [1, 2, 3, 4] -> [2, 4, 6, 8]

var transformedArray = [Int]()
for number in [1, 2, 3, 4] {
  transformedArray.append(number * 2)
}

transformedArray

// 3. Sum [1, 2, 3, 4] -> 10 using reduce

var sumArray = 0
for number in [1, 2, 3, 4] {
  sumArray += number
}

sumArray

// Higher Order Functions Solutions
/// The foor-loop solutions create variables (var) that are mutable. Higher order functions can use constants (let), they are un-mutable, safer.

// 1. Filter numbers array into [3, 3, 3], then filter into [2, 4]

let threeArrayHigher = numbers.filter({ return $0 == 3 })
let evenArrayHigher = numbers.filter({ return $0 % 2 == 0 })

threeArrayHigher
evenArrayHigher

// 2. Transfrom [1, 2, 3, 4] -> [2, 4, 6, 8] using map
let transformedArrayHigher = [1, 2, 3, 4].map({ return $0 * 2 })

transformedArrayHigher

// 3. Sum [1, 2, 3, 4] -> 10 using reduce

let sumArrayHigher = [1, 2, 3, 4].reduce(0, { sum, number in sum + number })

sumArrayHigher
