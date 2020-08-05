import UIKit

/// `Algorithm:` -  FizzBuzz

/// If a number is divisible by 3: "Fizz"
/// If a number is divisible by 5: "Buzz"
/// If a number is divisible by 3 and 5: "FizzBuzz"

var numbers = [Int]()

for i in 1...100 {
  numbers.append(i)
}

for number in numbers {
  if number % 3 == 0 && number % 5 == 0 {
    print("FizzBuzz")
    
  } else if number % 3 == 0 {
    print("Fizz")
    
  } else if number % 5 == 0 {
    print("Buzz")
    
  } else {
    print(number)
  }
}
