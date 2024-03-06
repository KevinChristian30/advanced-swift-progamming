import Foundation

// Even through protocols can be used as types, there are limitations

struct Folder {}
struct Cell {}

protocol Listable {
  associatedtype FileType
  func getType() -> String
}

class FolderCell: Listable {
  typealias FileType = Folder
  func getType() -> String {
    return "FolderCell with type: \(FileType.self)"
  }
}

class CollectionCell: Listable {
  typealias FileType = Cell
  func getType() -> String {
    return "CollectionCell with type: \(FileType.self)"
  }
}

class ListCell: Listable {
  typealias FileType = Cell
  func getType() -> String {
    return "ListCell with type: \(FileType.self)"
  }
}

// There is a problem
// let cell: Listable = CollectionCell() // Throws error
func enterListCell<T: Listable>(enterCell: T) {}

// The type must be defined by compile time, so things like this can't be done
// let cell: Listable = arc4random() % 2 == 0 ? FolderCell() : ListCell() // Throws