//
//  OnBoardingCoordinator.swift
//  TestApp
//
//  Created by Andrey on 24.02.2025.
//

import UIKit

class OnBoardingCoordinator  : Coordinator {
    
    override func start() {
        let vc = ViewController()
        navController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("app finish")
    }
}

