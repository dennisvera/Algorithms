//: Playground - noun: a place where people can play

import UIKit

// Challenge 1: Using your preferred language, please create an input string and then demonstrate how you would reverse it. For example: an input of "Programming is so much fun!" should return "!nuf hcum os si gnimmargorP". Do *not* use a built-in method, and be sure that your code is written clearly, in a way that enables others to easily understand your approach.

// Solution 1

let sentence = "Programming is so much fun!"

func reverseWordsIn(sentence: String) -> String {
    var reversedString = ""
    
    for char in sentence.characters {
        reversedString = "\(char)" + reversedString
    }
    return reversedString
}

print(reverseWordsIn(sentence: sentence))

// Solution 2

func reverseWordsWithReversedStringIn(sentence: String) -> String {
    var reversedString = ""
    
    for char in sentence.characters {
        reversedString.insert(char, at: reversedString.startIndex)
    }
    return reversedString
}

print(reverseWordsWithReversedStringIn(sentence: sentence))


// Challenge 2: Using your preferred language, please create an input array and then write a function to return the second smallest element in that array. For example: an input of {42, 8, 13, 79, 5, 2, 18} should return 5.

// Solution 1

let numbersArray = [42, 8, 13, 79, 5, 2, 18]

func getSecondSmallest(number: [Int]) -> Int {
    var firstNum = number[0]
    var secondNum = number[1]
    
    if firstNum <= secondNum {
        firstNum = secondNum
    }
    
    for num in number {
        if num < firstNum {
            secondNum = firstNum
            firstNum = num
            
        } else if num < secondNum {
            secondNum = num
        }
    }
    return secondNum
}

print(getSecondSmallest(number: numbersArray))

// Solution 2

func findSecondSmallestNumberInArray(number: [Int]) -> Int {
    let secondSmallestNumber = number.sorted {$0 < $1}[1]
    
    return secondSmallestNumber
}

print(findSecondSmallestNumberInArray(number: numbersArray))










