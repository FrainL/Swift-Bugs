import Foundation

class Number {
  
  var get: () -> Int
  
  func neverStopAdd(number: Int) {
    get = { self.get() + number }
  }
  
  func add(number: Int) {
    let get = self.get
    self.get = { get() + number }
  }
  
  init(initalizeNumber: Int) {
    self.get = { initalizeNumber }
  }
}

let number = Number(initalizeNumber: 1)

number.get()

number.add(number: 2)
number.get()

number.add(number: 3)
number.get()

//The code below will keep running 

//number.neverStopAdd(number: 2)
//number.get()
