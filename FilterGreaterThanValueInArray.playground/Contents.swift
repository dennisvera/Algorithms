import UIKit

// Filter Greater Than Given Value in Array

let numbers = [1, 3, 0, 5, 7, 20, 9, 33]

/// Solution with for-loop
func filterGreaterThan(value: Int, in numbers: [Int]) -> [Int] {
  var greaterValues = [Int]()
  
  for number in numbers {
    if number > value {
      greaterValues.append(number)
    }
  }
  
  return greaterValues
}

filterGreaterThan(value: 4, in: numbers)

// Solutions With Closures

// Helper functions

func greaterThanSeven(value: Int) -> Bool {
  return value > 7
}

func divisibleByFive(value: Int) -> Bool {
  return value % 5 == 0
}

func lessThanTwenty(value: Int) -> Bool {
  return value < 20
}

func filterWithPredecate(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
 var filteredValues = [Int]()
  
  for number in numbers {
    if closure(number) {
      filteredValues.append(number)
    }
  }
  
  return filteredValues
}

filterWithPredecate(closure: { number in
  return number > 4
}, numbers: numbers)

/// Calling a function inside a function with a closure
filterWithPredecate(closure: greaterThanSeven, numbers: numbers)
filterWithPredecate(closure: divisibleByFive, numbers: numbers)
filterWithPredecate(closure: lessThanTwenty, numbers: numbers)

