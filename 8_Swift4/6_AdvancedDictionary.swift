import Foundation

// Dictionary default value
var dict = ["A": "B"]
let a = dict["A", default: "No Value"]

// Group a sequence into a dictionary
let contacts = ["Julia", "Susan", "John"]
let grouped = Dictionary(grouping: contacts, by: { $0.first! })
print(grouped)

// Just functional programming, refer to docs