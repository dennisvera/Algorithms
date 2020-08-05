import UIKit

// Binary Search Algorithm

// Given an array of numbers, return True if the searched number exists in the array,
// return False otherwise

var numbers = [Int]()

for i in 1...100 {
  numbers.append(i)
}

// A binary search approach.
func binarySearchFor(searchValue: Int, array: [Int]) -> Bool {
  var leftIndex = 0
  var rightIndex = array.count - 1
    
  while leftIndex <= rightIndex {
    let middleIndex = (leftIndex + rightIndex) / 2
    let middleNumber = array[middleIndex]
    
    print("middleNumber: \(middleNumber), leftIndex: \(leftIndex), rightIndex: \(rightIndex), array: \(array[leftIndex]) - \(array[rightIndex])")
    
    if middleNumber == searchValue {
      return true
    }
    
    if searchValue < middleNumber {
      rightIndex = middleIndex - 1
    }
    
    if searchValue > middleNumber {
      leftIndex = middleIndex + 1
    }
  }
  
  return false
}

print(binarySearchFor(searchValue: 101, array: numbers))

// A linear search approach. Slower when the array contains a lot of numbers.
func linearSearchFor(searchValue: Int, array: [Int]) -> Bool {
  for number in array {
    if number == searchValue {
      return true
    }
  }
  
  return false
}

//print(linearSearchFor(searchValue: 9, array: numbers))
