import UIKit

/// `Algorithm:` - Counting Palidromes

/// What is a Palidrome?
/// A: A word that is spelled the same from left <> right. i.e. Civic

/// Implement a fucntion that records how many times a palidrome word apppears in a given string.

let string = "madam anna kayak notAPalindrome anna Civic racecar anna Civic"

func palindromeCountIn(string: String) -> [String: Int] {
  let words = string.components(separatedBy: " ")
  var palindromeCount = [String: Int]()
  
  for word in words {
    if isPalindrome(word: word) {
      let count = palindromeCount[word] ?? 0
    
      palindromeCount[word] = count + 1
    }
  }
  
  return palindromeCount
}

func isPalindrome(word: String) -> Bool {
  let characters = Array(word.lowercased())
  var currentIndex = 0
  
  while currentIndex < characters.count / 2 {
    if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
      return false
    }
    
    currentIndex += 1
  }
  
  return true
}

print(palindromeCountIn(string: string))

