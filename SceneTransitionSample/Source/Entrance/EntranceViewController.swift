import UIKit

class EntranceViewController: UIViewController {
    
    @IBOutlet var signInButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        signInButton.addTarget(self, action: #selector(EntranceViewController.didTapSignInButton), for: .touchUpInside)
    }

    @objc private func didTapSignInButton(_: UIButton) {
        UserManager.shared.signIn()
    }
}
