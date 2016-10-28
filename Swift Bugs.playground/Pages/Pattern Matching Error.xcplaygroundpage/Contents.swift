import Foundation

enum JSON {
  case object([String: Any])
  case array([Any])
  case any(Any)
  
  var object: Any {
    switch self {
    case .object(let any as Any):
      return any
    case .array(let any as Any):
      return any
    case .any(let any):
      return any
    default:
      return NSNull()
    }
  }
  
  var objectWillError: Any {
    switch self {
    case .object(let any as Any), .array(let any as Any), .any(let any):
      return any
    default:
      return NSNull()
    }
  }
}

JSON.object(["aaa": 222]).object
JSON.any(10).object

JSON.any(10).objectWillError

//The code below will be error

//JSON.object(["aaa": 222]).objectWillError
