import UIKit

/// `Strong Reference Cycle in Closures`

class HTMLElement {
  
  let name: String
  let text: String
  
  /// In order to prevent the closure from creating a retain cycle, we use a capture list to make self `weak`.
  /// The `lazy` keyword is necessary  in order to call `self` within a property closure. 
  lazy var asHTML: () -> String = { [weak self] in
    guard let strongSelf = self else { return "" }
    return "<\(strongSelf.name)> \(strongSelf.text) <\(strongSelf.name)>"
  }
  
  init(name: String, text: String) {
    self.name = name
    self.text = text
  }
  
  deinit {
    print("HTMLElement \(name) is being deinitialized.")
  }
}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "This is the paragraph text...")
paragraph?.asHTML()

paragraph = nil
