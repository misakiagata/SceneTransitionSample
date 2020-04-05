import UIKit

class RootViewController: UIViewController {
    
    enum ViewType {
        case entrance
        case main
    }
    

   
   class func show(_ viewType: ViewType, completion: (() -> Void)? = nil) {
       switch viewType {
       case .entrance:
           let ud = UserDefaults.standard
           ud.set(false, forKey: "isSignIn")
           UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController = EntranceViewController.instantiate()
           
           completion?()
       case .main:
           let ud = UserDefaults.standard
           ud.set(true, forKey: "isSignIn")
           UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController = TabBarController.build()
       }
   }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
