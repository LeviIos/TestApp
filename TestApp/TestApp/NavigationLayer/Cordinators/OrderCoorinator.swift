import UIKit

class OrderCoorinator  : Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        navController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("app finish")
    }
}
