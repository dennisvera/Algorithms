//: Playground - noun: a place where people can play

import UIKit

let sampleSentence = "Lets remove every other word on this sentence and also create an extension to remove all the vowels"

func reverseWordsInSentence(sentence: String) -> String {
    
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

//remove all vowels from sampleSentence
extension String {
    func stringByRemovingVowels() -> String {
        var newWord = self
        for vowel in ["a", "e", "i", "o", "u"] {
            newWord = newWord.replacingOccurrences(of: vowel, with: "")
        }
        return newWord
    }
}

print(reverseWordsInSentence(sentence: sampleSentence))
