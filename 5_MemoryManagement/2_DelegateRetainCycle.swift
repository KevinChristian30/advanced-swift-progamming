import Foundation

// Delegates Should Always be weakt to prevent retain cycle

protocol SendDataDelegate: AnyObject {
}

class SendingVC {
  weak var delegate: SendDataDelegate?

  deinit {
    print("Delegator Gone")
  }
}

class ReceivingVC: SendDataDelegate {
  lazy var sendingVC: SendingVC = {
    let vc = SendingVC()
    vc.delegate = self
    return vc
  }()

  deinit {
    print("Delegate gone")
  }
}

var vc: ReceivingVC? = ReceivingVC()
print(vc?.sendingVC ?? "")
vc = nil
