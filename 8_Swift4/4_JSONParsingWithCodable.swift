import Foundation

struct BlogPost: Codable {
  var title: String
  var subtitle: String
}

let blogPost: BlogPost = BlogPost(title: "title", subtitle: "subtitle")

// Encode
let jsonEncoder = JSONEncoder()
let jsonDecoder = JSONDecoder()

do {
  let json = try jsonEncoder.encode(blogPost)
  if let jsonString = String(data: json, encoding: .utf8) {
    print(jsonString)
  }

  // Decode
  let obj = try jsonDecoder.decode(BlogPost.self, from: json) 
  print(obj)
} catch {
}