//: Playground - noun: a place where people can play

import UIKit


// Fibonacci sequence algorithm

func fibonnacciFor(numSteps: Int) -> [Int] {
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

print(fibonnacciFor(numSteps: 10))


// Fibonnacci recursive algorithm

func fibonnacciRecursionFor(numSteps: Int, first: Int, second: Int) -> [Int] {
    if numSteps == 0 {
        return []
    }
    
    return [first + second] + fibonnacciRecursionFor(numSteps: numSteps - 1, first: second, second: first + second)
}

print([0, 1] + fibonnacciRecursionFor(numSteps: 9, first: 0, second: 1))
