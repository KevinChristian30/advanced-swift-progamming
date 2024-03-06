import Foundation

enum HTTPError {
  case notFound404
  case forbidden403
}

enum ResultType<T> {
  case success(T)
  case failure(HTTPError)
}

let success = ResultType<String>.success("Success")
print(success)

let failure: ResultType<Any> = ResultType.failure(.notFound404)
print(failure)