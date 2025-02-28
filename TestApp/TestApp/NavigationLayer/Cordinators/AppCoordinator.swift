//
//  AppCoordinator.swift
//  TestApp
//
//  Created by Andrey on 24.02.2025.
//

import UIKit

class AppCoordinator  : Coordinator{
    
    
    
    override func start() {
        showOnBoaring()
    }
    override func finish() {
        print("app finish")
    }
}

private extension AppCoordinator {
    func showOnBoaring() {
        guard let navController = navController else { return }
        let onBoardingCoordinator = OnBoardingCoordinator(type: .onbordingApp ,navController: navController, finishDelegate: self)
        addChild(coordinatorAdd: onBoardingCoordinator)
        onBoardingCoordinator.start()    }
    func showMain() {
        
    }
}

extension AppCoordinator : CoordinatorFinishDelegate {
    func coordinatorDidFinish(_ coordinator: any CoordinatorsProtocoll) {
        switch coordinator.type {
        case .app:
            return
        default : navController?.popToRootViewController(animated: false)
            
        }
    }
}
    
        
    
        
     

