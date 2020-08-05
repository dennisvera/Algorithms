import UIKit

// ALGORITHM: - Most Common Element (Name) in an Array

let names = ["Bob", "Sally", "Bob", "Sam", "Michael", "Bob", "Sam", "Peter"]

func mostCommonNameIn(array: [String]) -> String {
  var mostCommonName = ""
  var nameCountDictionary = [String: Int]()
  
  for name in array {
    if let count = nameCountDictionary[name] {
      nameCountDictionary[name] = count + 1
    } else {
      nameCountDictionary[name] = 1
    }
  }
  
  for key in nameCountDictionary.keys {
    if mostCommonName == "" {
      mostCommonName = key
    } else {
      let count = nameCountDictionary[key]!

      if count > nameCountDictionary[mostCommonName]! {
        mostCommonName = key
      }
    }
    
    print("\(key): \(nameCountDictionary[key]!) ")
  }
  
  return mostCommonName
}

print("\nMost Common Name: " + mostCommonNameIn(array: names))
