import Foundation

protocol LifeSpan {
  var numberOfHearts: Int { get }
  mutating func increaseHeart()
  mutating func getAttacked()
}

enum Player: LifeSpan {
  case dead
  case alive(currentHeart: Int)

  var numberOfHearts: Int {
    switch self {
      case .dead:
        return 0;
      case let.alive(numberOfHearts):
        return numberOfHearts
    }
  }

  mutating func increaseHeart() {
    switch self {
      case .dead:
        self = .alive(currentHeart: 1)
      case .alive:
        self = .alive(currentHeart: self.numberOfHearts + 1)
    }
  }
  mutating func getAttacked() {
    switch self {
      case .alive:
        if self.numberOfHearts == 1 {
          self = .dead
        } else {
          self = .alive(currentHeart: self.numberOfHearts - 1)
        }
      case .dead:
        print("Already dead")
    }
  }
}

var player = Player.alive(currentHeart: 1)
print(player.numberOfHearts)

player.increaseHeart()
print(player.numberOfHearts)

player.getAttacked();
player.getAttacked();
print(player.numberOfHearts);