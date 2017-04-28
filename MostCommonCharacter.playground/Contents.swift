//: Playground - noun: a place where people can play

import UIKit

// Find most common character in sentence

let sentence = "Oceans free-fall Waves interweave Patterns Dizzy space Sound ball Soft birthColours congeal'ectricity"

func findMostCommonCharacterIn(sentence: String) -> String {
    let formatedString = sentence.replacingOccurrences(of: " ", with: "")
    var characterDict = [String: Int]()
    var mostCommonCharacter = ""
    
    for char in formatedString.characters {
        let character = String(char)
        
        if characterDict[character] != nil {
            characterDict[character] = characterDict[character]! + 1
        } else {
            characterDict[character] = 1
        }
    }
    
    for (key,value) in (Array(characterDict).sorted { $0.1 < $1.1 }) {
        mostCommonCharacter = "\(key): \(value)"
    }
    
    return mostCommonCharacter
}

print(findMostCommonCharacterIn(sentence: sentence))
