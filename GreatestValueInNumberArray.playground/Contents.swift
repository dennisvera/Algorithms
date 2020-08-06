import UIKit

// Find the greates value in the numbers array

let numbers = [1, 2, -3, 4, -5, 6, 1, 4, 20, 15, 200]

func greatesValueIn(array: [Int]) -> Int? {
  if array.count == 0 {
    return nil
  }
  
  var greatestValue = -1
  
  for number in array {
    if number > greatestValue {
      greatestValue = number
    }
  }
  
  return greatestValue
}

greatesValueIn(array: numbers)

/// The Swift max() operator
numbers.max()
