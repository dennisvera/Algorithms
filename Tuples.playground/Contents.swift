import UIKit

/// `Tuples`

// What are Tuples?
// A: Is a variable that can contain a couple of values.

let tuple1 = ("Billy", "Johnson", "Bob")
print("Tuple1 1st element:", tuple1.0)
print("Tuple1 2nd element:", tuple1.1)
print("Tuple1 3rd element:", tuple1.2)

let tuple2 = (firstName: "Billy", lastname: "Woods")
print("Tuple2:", tuple2.firstName, tuple2.lastname)

/// Regular function
func multiply(x: Int, y: Int) -> Int {
  return x * y
}

multiply(x: 4, y: 3)

/// Function that returns a Tuple
func divide(x: Int, y: Int) -> (Int, Int) {
  let quotient = Int(x / y)
  let remainder = x % y
  
  return (quotient, remainder)
}

let result = divide(x: 43, y: 4)
print("Result:", result.0, "Remainder:", result.1)


/// Optionals inside of Tuples
func topTwoLongest(names: [String]) -> (String?, String?) {
  
  // Check if array is empty, it has no names
  if names.isEmpty {
    return (nil, nil)
  }
  
  let sortedList = names.sorted { (x, y) -> Bool in
    return x.count > y.count
  }
  
  // Check if array only has one name
  if sortedList.count == 1 {
    return (sortedList[0], nil)
  }
  
  return (sortedList[0], sortedList[1])
}

let longestTwoNames = topTwoLongest(names: ["Steve", "Mike", "Bill", "Smantha"])
print("Longest Names:", longestTwoNames.0!, "and", longestTwoNames.1!)
