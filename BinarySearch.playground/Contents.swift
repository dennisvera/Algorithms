//: Playground - noun: a place where people can play

import UIKit

var oneHundred = [Int]()
for i in 1...100 {
    oneHundred.append(i)
}

func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        print("middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), [\(array[leftIndex]) - \(array[rightIndex])]")
        
        if middleValue == searchValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    
    return false
}

print(binarySearchForSearchValue(searchValue: 33, array: oneHundred))


/*
// Linear search:
let numbers = [1, 2, 4, 6, 8, 9, 11, 13, 16, 17, 20]

func linearSearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    for num in array {
        if num == searchValue {
            return true
        }
    }
    return false
}

print(linearSearchForSearchValue(searchValue: 20, array: numbers))
*/


