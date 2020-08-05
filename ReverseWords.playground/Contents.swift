import UIKit

/// `Algorithm:` -  Reverse every other word and remove all vowels  in a given string.

let textSample = "Lets start today by completing a very interesting challenge"

func reverseWordsIn(text: String) -> String {
  let allWords = text.components(separatedBy: " ")
  var newText = ""
  
  for index in 0...allWords.count - 1 {
    let word = allWords[index]
    
    if newText != "" {
      newText += " "
    }
    
    if index % 2 == 1 {
      let reversedWord = String(word.reversed())
      newText += reversedWord.removeVowels()
    } else {
      newText += word
    }
  }
  
  return newText
}

print(reverseWordsIn(text: textSample))

extension String {
  
  /// Helper Method for removing all vowels in a string
  func removeVowels() -> String {
    var newWord = self
    
    for vowel in ["a", "e", "i", "o", "u"] {
      newWord = newWord.replacingOccurrences(of: vowel, with: "")
    }
    
    return newWord
  }
}
