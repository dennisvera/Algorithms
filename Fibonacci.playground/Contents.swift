//: Playground - noun: a place where people can play

import UIKit

func fibNumSteps(numSteps: Int) -> [Int] {
    var sequence = [0, 1]
    if numSteps <= 1 {
        return sequence
    }
    
    for _ in 0...numSteps - 2 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence.append(first + second)
    }
    
    return sequence
}

fibNumSteps(numSteps: 8)

/*
//recursive fibonacci - NOT WORKING
func fibRecursionForNumSteps(numSteps: Int, first: Int, second: Int) -> [Int] {
    if numSteps == 0 {
        return []
    }
    print(first, second)
    return [first + second] + fibRecursionForNumSteps(numSteps: numSteps - 1, first: second, second: first + second)
}

[0, 1] + fibRecursionForNumSteps(numSteps: 9, first: 0, second: 1)
*/