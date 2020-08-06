import UIKit

/// `Retain Cycle` - Memory Management

class Person {
  
  let name: String
  
  init(name: String) {
    self.name = name
  }
  
  deinit {
    print("\(name) is being deinitialized.")
  }
}

class Apartment {
  
  let number: Int
  /// Setting the tenant property to `weak` protects against retain cycles. Weak will not raise the `reference count`
  weak var tenant: Person?
  
  init(number: Int) {
    self.number = number
  }
}

var bob: Person? = Person(name: "Bob")
let apartment = Apartment(number: 666)

/// Setting the tenant to Bob  without tenant  being `weak` property would create a  retain cycle.
/// The solution to make sure you do not create a reatin cycle is to set one of the variables to weak.
apartment.tenant = bob

bob = nil
