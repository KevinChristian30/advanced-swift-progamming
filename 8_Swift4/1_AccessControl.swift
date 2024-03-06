import Foundation

// Five levels of access control
// private -> Only in the scope
class Human {
    private(set) var name: String // Can only be changed in the scope
    init(name: String) {
        self.name = name
    }
}

// fileprivate -> Only in the file
// internal -> Default (Allows to subclass it, allows to use in a same module)
// public -> Can be used but not be overriden
// open -> Can be overriden