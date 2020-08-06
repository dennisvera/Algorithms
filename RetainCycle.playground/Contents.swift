import UIKit

/// `Retain Cycle` - Memory Management

class Person {
  
  let name: String
  var apartment: Apartment?
  
  init(name: String) {
    self.name = name
  }
  
  deinit {
    print("\(name) is being deinitialized.")
  }
}

class Apartment {
  
  let number: Int
  /// Setting the tenant property to `weak` protects against retain cycles when the Person and Apartment  are binded. Weak will not raise the `reference count`
  weak var tenant: Person?
  
  init(number: Int) {
    self.number = number
  }
  
  deinit {
    print("Apartment \(number) is being deinitialized.")
  }
}

var bob: Person? = Person(name: "Bob")
var apartment: Apartment? = Apartment(number: 666)

/// If the tenant  variable was not  set to `weak`, this would create a retain cycle. Person <> Apartment would not be deallocated / released as they are tight together.
apartment?.tenant = bob
bob?.apartment = apartment

bob = nil
apartment = nil
