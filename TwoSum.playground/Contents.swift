import UIKit

// Return a True if there are two numbers in the array that equal to the given value.

let numbers = [1, 3, 6, 7, 7, 12, 14]

// 1. Pointer Solution - Linear (most efficient)

func pointerTwoSumIn(_ numbers: [Int], value: Int) -> Bool {
  let sortedNumbers = numbers.sorted()
  
  var firstIndex = 0
  var lastIndex = sortedNumbers.count - 1
  
  while firstIndex < lastIndex {
    let sumOfFirstAndLastIndex = sortedNumbers[firstIndex] + sortedNumbers[lastIndex]
    
    if sumOfFirstAndLastIndex == value {
      print("\nPointer Solution: \(sortedNumbers[firstIndex]) + \(sortedNumbers[lastIndex]) = \(value)")
      return true
      
    } else if sumOfFirstAndLastIndex < value {
      firstIndex += 1
      
    } else if sumOfFirstAndLastIndex > value {
      lastIndex -= 1
    }
  }
  
  return false
}

// 2. Brute Force Solution - Nested For-loop compare all (n2)

func bruteForceTwoSumIn(_ numbers: [Int], value: Int) -> Bool {
  let sortedNumbers = numbers.sorted()
  
  for i in 0..<sortedNumbers.count {
    for j in 0..<sortedNumbers.count where j != i {
      if sortedNumbers[j] + sortedNumbers[i] == value {
        print("Brute Solution: \(sortedNumbers[i]) + \(sortedNumbers[j]) = \(value)")
        return true
      }
    }
  }
  
  return false
}


print("Brute Force Solution:", bruteForceTwoSumIn(numbers, value: 21))
print("Pointer Solution:", pointerTwoSumIn(numbers, value: 21))
