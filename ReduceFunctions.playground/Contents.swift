import UIKit

/// `Algorithm:` - Reduce Function

let numbers = [1, 2, 3, 4]
let stringsArray = ["This", "is", "dummy", "text,", "for", "dummies!"]

/// `1.` Implement a function that adds all elements

// Reduce Solution
let sumReduce = numbers.reduce(0) { $0 + $1 }
print("Sum Reduce Result: ", sumReduce)

// ForEach Solution
func add(numbers: [Int]) -> Int {
  var sum = 0
  
  numbers.forEach { sum += $0 }
  
  return sum
}

add(numbers: numbers)


/// `2.` Implement the product of an Array of Integers

// Reduce Solution
let productReduce = numbers.reduce(1, { $0 * $1 })
print("Product Reduce Result: ", productReduce)

// ForEach Solution
func productValue(for numbers: [Int]) -> Int {
  var product = 1
  
  numbers.forEach { number in
    product *= number
  }
  
  return product
}

productValue(for: numbers)


/// `3.` Transform an array of Strings into a sentence

// Reduce Solution
let transformReduce = stringsArray.reduce("", { $0 + $1 + " "})
print("Transform Reduce Result: ", transformReduce)

// ForEach Solution
func transformIntoSentence(stringArray: [String]) -> String {
  var sentence = ""
  
  stringsArray.forEach({ sentence += $0 + " " })
  
  return sentence
}

transformIntoSentence(stringArray: stringsArray)
