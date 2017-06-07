//: Playground - noun: a place where people can play

import UIKit

// Reverse every other word algorithm

let sentence = "Lets start today by completing a very interesting challenge"

func reverseWordsIn(sentence: String) -> String {
    
    let allWords = sentence.components(separatedBy: " ")
    var newSentence = ""
    
    for index in 0...allWords.count - 1 {
        let word = allWords[index]
        if newSentence != "" {
            newSentence += " "
        }
        if index % 2 == 1 {
            let reverseWord = String(word.characters.reversed())
            newSentence += reverseWord.stringByRemovingVowels()
        } else {
            newSentence += word.stringByRemovingVowels()
        }
    }
    
    return newSentence
}

// Remove vowels in sentence algorithm

extension String {
    func stringByRemovingVowels() -> String {
        var newWord = self
        for vowel in ["a", "e", "i", "o", "u"] {
            newWord = newWord.replacingOccurrences(of: vowel, with: "")
        }
        
        return newWord
    }
}

print(reverseWordsIn(sentence: sentence))
