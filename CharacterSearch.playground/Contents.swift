//: Playground - noun: a place where people can play

import UIKit

//Search for the number of times the letter "s" appears in this sentence

let sentence = "We are time captains. We are time captains. We write the astral records of history. We are time captains. Oceans free-fall. Waves interweave. Patterns. Dizzy space. Sound ball. Soft birth. Colours congeal'ectricity. Cosmoscope sparks. Night laughs cool. Flare heartbeat. Serene sun"


//++Character search with "reduce"
func numberOfOccurences(character: String, sentence: String) -> Int {
    
    return sentence.components(separatedBy: " ").reduce(0, { $1.contains(character) ? $0 + 1 : $0 })
}

numberOfOccurences(character: "s", sentence: sentence)


//++Character search with "foreach"
//func numberOfOccurences(character: String, sentence: String) -> Int {
//    let words = sentence.components(separatedBy: " ")
//    
//    var count = 0
//    words.forEach({ if $0.contains (character) {
//        count += 1
//        }
//    })
//    
//    return count
//}

//numberOfOccurences(character: "s", sentence: sentence)



//++Character search with "for-loop"
//func numberOfOccurences(character: String, sentence: String) -> Int {
//    let words = sentence.components(separatedBy: " ")
//    
//    var count = 0
//    
//    for word in words {
//        if word.contains("s") {
//            count += 1
//            print(word)
//        }
//    }
//    
//    return count
//}

//numberOfOccurences(character: "s", sentence: sentence)
