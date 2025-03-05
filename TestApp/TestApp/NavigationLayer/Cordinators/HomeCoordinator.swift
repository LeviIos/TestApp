

import UIKit

class HomeCoordinator  : Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0.4044071734, alpha: 1)
        
        
        navController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("app finish")
    }
}
