//: Playground - noun: a place where people can play

import UIKit


// Find most common character in sentence

let sentence = "buddy is my favorite little doggy"

func findMostCommonCharacterIn(sentence: String) -> String {
    
    let formatedString = sentence.replacingOccurrences(of: " ", with: "")
    var characterDict = [String: Int]()
    var mostCommonCharacter = ""
    
    for char in formatedString.characters {
        let char = String(char)
        
        if characterDict[char] != nil {
            characterDict[char] = characterDict[char]! + 1
        } else {
            characterDict[char] = 1
        }
    }
    
    for (key,value) in (Array(characterDict).sorted { $0.1 < $1.1 }) {
        mostCommonCharacter = "\(key): \(value)"
    }
    
    return mostCommonCharacter
}

print(findMostCommonCharacterIn(sentence: sentence))


