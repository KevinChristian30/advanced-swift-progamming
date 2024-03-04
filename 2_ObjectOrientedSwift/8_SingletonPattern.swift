import Foundation

// Singleton is just like in any other language

class AccountManager {
  var userInfo = (ID: "kevin" , Password: 10283810238)
  static let instance: AccountManager = AccountManager()

  func network() {
    print("Networking")
  }

  private init() {}
}

print(AccountManager.instance.userInfo)
AccountManager.instance.network()