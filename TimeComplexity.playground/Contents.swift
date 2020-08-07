import UIKit

/// `Algorithm:` - Constant Time vs Linear Time O(1) Vs O(n)

let gameOfThronesCharacters = ["Jon Snow",
                               "Arya Stark",
                               "Sansa Stark",
                               "Brienne of Tarth",
                               "Daenerys Targeryan"
]

let searchForCharacter = "Brienne of Tarth"

/// `O(n)` Linear Time approach. Not as efficient.
for character in gameOfThronesCharacters {
  if character == searchForCharacter {
    print(character)
  }
}

/// `O(1)` Big O of 1 -- Constant Time. More efficient.
let charactersDictionary = ["Jon Snow": 1,
                            "Arya Stark": 2,
                            "Sansa Stark": 3,
                            "Brienne of Tarth": 4,
                            "Daenerys Targeryan": 5
]

let searchForKey = charactersDictionary[searchForCharacter]
