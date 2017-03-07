//: Playground - noun: a place where people can play

import UIKit


//1. filter into [3, 3, 3], then filter into [2, 4]

let numbers = [1, 2, 3, 4, 3, 3]

let filteredThreeNumbers = numbers.filter({return $0 == 3})
let divisibleByTwoFiltered = numbers.filter({return $0 % 2 == 0})
print("There are \(filteredThreeNumbers) number(s) 3 in this array, and \(divisibleByTwoFiltered) divisible numbers by 2.")


//2. transfrom [1, 2, 3, 4] -> [2, 4, 6, 8] using map

let transformedNumbers = [1, 2, 3, 4].map({return $0 * 2})
print(transformedNumbers)

//3. sum [1, 2, 3, 4] -> 10 using reduce

let sum = [1, 2, 3, 4].reduce(0, {sum, number in sum + number})
print(sum)




//--The foor-loop way of solving the same problems above. The foor-loop solutions create "var" variables that are MUTABLE. This is less SAFE than the Higher Order solutions with the "let" variables

//1. filter into [3, 3, 3], then filter into [2, 4]
var filteredNumbers = [Int]()
var divisibleByTwoNumbers = [Int]()
for number in numbers {
    if number == 3 {
        filteredNumbers.append(number)
        
    } else {
        if number % 2 == 0 {
            divisibleByTwoNumbers.append(number)
        }
    }
}
print("There are \(filteredNumbers) number(s) 3 in this array, and \(divisibleByTwoNumbers) divisible numbers by 2.")


//2. transfrom [1, 2, 3, 4] -> [2, 4, 6, 8] using map
var transformedArray = [Int]()
for number in 1...4 {
    transformedArray.append(number * 2)
}
print(transformedArray)


//3. sum [1, 2, 3, 4] -> 10 using reduce
var sumElements = 0
for number in 1...4 {
    sumElements += number
}
print(sumElements)






