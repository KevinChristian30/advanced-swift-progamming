import Foundation

struct Blog {
  let author: String
  let id: Int
  let url: URL

  enum BlogCodingKeys: String, CodingKey {
    case author = "custom_key"
    case id
    case url
  }
}

extension Blog: Encodable {
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: BlogCodingKeys.self)

    try container.encode(author, forKey: .author)
    try container.encode(id, forKey: .id)
    try container.encode(url, forKey: .url)
  }
}

extension Blog: Decodable {
  enum BlogDecodingKeys: String, CodingKey {
    case author = "custom_key"
    case id
    case url
  }

  init(from decoder: Decoder) {
    do {
      let container = try decoder.container(keyedBy: BlogDecodingKeys.self)
      let author = try container.decode(String.self, forKey: .author)
      print(author)
      // ...
    } catch {

    }
  }
}