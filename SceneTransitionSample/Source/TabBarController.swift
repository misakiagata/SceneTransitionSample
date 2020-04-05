import UIKit

class TabBarController: UITabBarController {

    static func build() -> TabBarController {
        let tabBarController = TabBarController()
        
        let postsViewController = PostsViewController.instantiate()
        postsViewController.title = "Posts"
        
        let searchViewController = SearchViewController.instantiate()
        searchViewController.title = "Search"
        
        let userViewController = UserViewController.instantiate()
        userViewController.title = "User"
        
        tabBarController.setViewControllers(
            [
                NavigationController(rootViewController: postsViewController),
                NavigationController(rootViewController: searchViewController),
                NavigationController(rootViewController: userViewController),
            ],
            animated: false
        )
        return tabBarController
    }
}
