import UIKit

/// `Algorithm:` -  Factorial Algorithm

/// A factorial solution
func factorialOf(value: UInt) -> UInt {
  var product: UInt = 1
  
  /// The factorial value of 0 is 1
  if value == 0 {
    return 1
  }
  
  for i in 1...value {
    product = product * i
  }
  
  return product
}
//print(factorialOf(value: 5))


/// A reccursive factorial solution
func recursiveFactorialof(value: UInt) -> UInt {
  /// The factorial value of 0 is 1
  if value == 0 {
    return 1
  }
  
  print(value)
  return value * recursiveFactorialof(value: value - 1)
}

print(recursiveFactorialof(value: 3))
