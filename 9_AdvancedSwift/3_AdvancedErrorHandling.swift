import Foundation

enum TestingError: Error {
  case randomError
}

func nonThrowableFunc() {
  print("Non throwable function")
}

func throwableFunc() throws {
  print("From throwable function")
  throw TestingError.randomError
}

func rethrowableFuncWithErrorHandling(_ closure: () throws -> ()) rethrows {
  do {
    try closure()
  } catch TestingError.randomError {
    print("Random error thrown by closure")
  }
}
try? rethrowableFuncWithErrorHandling(throwableFunc)