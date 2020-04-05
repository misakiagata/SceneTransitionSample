import Foundation

final class UserManager {
    
    enum State {
        case signIn
        case signOut
    }
    
    static let shared = UserManager()
    private var listeners: [(State) -> Void] = []
    private var currentState: State = .signOut {
        didSet {
            listeners.forEach { $0(currentState) }
        }
    }
    
    init() {
        self.fetchUserState()
    }
    
    func fetchUserState() {
        let ud = UserDefaults.standard
        if ud.bool(forKey: "isSignIn") {
            print("signIn")
            self.currentState = .signIn
        } else {
            print("signOut")
            self.currentState = .signOut
        }
    }
    
    func register(listener: @escaping (State) -> Void) {
        listeners.append(listener)
        listener(currentState)
    }
    
    func signIn() {
        let ud = UserDefaults.standard
        ud.set(true, forKey: "isSignIn")
        self.currentState = .signIn
    }
    
    func signOut() {
        let ud = UserDefaults.standard
        ud.set(false, forKey: "isSignIn")
        self.currentState = .signOut
    }
}
