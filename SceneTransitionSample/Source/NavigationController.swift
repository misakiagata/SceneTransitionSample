import UIKit

class NavigationController: UINavigationController {
    
    override func loadView() {
        super.loadView()
        navigationBar.prefersLargeTitles = true
    }
}
