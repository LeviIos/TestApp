import UIKit

class Profile  : Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = #colorLiteral(red: 0.2495771945, green: 0.2495771945, blue: 0.2495771945, alpha: 1)
        navController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("app finish")
    }
}
