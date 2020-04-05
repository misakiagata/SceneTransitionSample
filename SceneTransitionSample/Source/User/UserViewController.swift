import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var signOutButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        signOutButton.addTarget(self, action: #selector(UserViewController.didTapSignOutButton), for: .touchUpInside)
    }
    
    @objc private func didTapSignOutButton(_: UIButton) {
        RootViewController.show(.entrance)
    }
}
