import UIKit

class MyListCoordinator  : Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .green
        navController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("app finish")
    }
}
