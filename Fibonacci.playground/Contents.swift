import UIKit

/// `Algorithm:` -  Fibonacci sequence

/// Fibonnaci sequence solution
func fibonacciSequenceFor(number: Int) -> [Int] {
  var sequence = [0, 1]
  
  if number <= 1 {
    return sequence
  }
  
  for _ in 0...number - 2 {
    let first = sequence[sequence.count - 2]
    let second = sequence.last!
    
    sequence.append(first + second)
  }
  
  return sequence
}

fibonacciSequenceFor(number: 10)

/// Fibonnaci sequence wirth recursion solution
func fibonnacciRecursionFor(number: Int, first: Int, second: Int) -> [Int] {
  if number == 0 {
    return []
  }
  
  return [first + second] + fibonnacciRecursionFor(number: number - 1, first: second, second: first + second)
}

[0, 1] + fibonnacciRecursionFor(number: 9, first: 0, second: 1)
