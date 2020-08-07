import UIKit

/// `AEDIT:` Interview Questions

/// `Q1.` Convert the zip code string below into an array of strings, without any extra spaces before or after.

let zipCodesString = "10006, 36111,22204, 36830"

func transformStringToArray(_ string: String) -> [String] {
  let stringWithNoSpaces = string.replacingOccurrences(of: " ", with: "")
  let transfrom = stringWithNoSpaces.components(separatedBy: "")
  
  return transfrom
}

let transform = transformStringToArray(zipCodesString)
print(transform)
