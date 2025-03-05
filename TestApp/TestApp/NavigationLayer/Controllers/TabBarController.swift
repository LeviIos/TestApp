

import UIKit

class TabBarController : UITabBarController {
    
    init(tabBarController: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        for tab in tabBarController {
            self.addChild(tab)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.backgroundColor = Colors.gra
        
    }
}
