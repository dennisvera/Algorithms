import UIKit

/// `Algoirthm:` - Flatten Nested Arrays

/// Nested Arrays and Outputs Examples:
///
/// [1] -> [1]
/// [1, 2, 3] -> [1, 2, 3]
/// [1, [2]] -> [1, 2]
/// [1, [2, 3]] -> [1, 2, 3]
/// [1, [2, [3, 4]]] -> [1, 2, 3, 4]

func flatten(nestedArray: [Any]) -> [Int] {
  var flattenArray = [Int]()
  
  for element in nestedArray {
    if element is Int {
      flattenArray.append(element as! Int)
      
    } else if element is [Any] {
      let recursionArray = flatten(nestedArray: element as! [Any])
      
      for number in recursionArray {
        flattenArray.append(number)
      }
    }
  }
  
  return flattenArray
}

let flattenArray = flatten(nestedArray: [[-1, 0], 1, [2, 7, [3, 3, 88]]])
print("Result: ", flattenArray)
