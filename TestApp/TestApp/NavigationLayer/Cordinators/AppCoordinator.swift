//
//  AppCoordinator.swift
//  TestApp
//
//  Created by Andrey on 24.02.2025.
//

import UIKit

class AppCoordinator  : Coordinator{
    
    override func start() {
        //showOnBoaring()
        showMain()
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
        onBoardingCoordinator.start()
    }
    
    func showMain() {
        guard let navigationController = navController else { return }
        let homeNavController = UINavigationController()
        let homeCoordinator = HomeCoordinator(type: .mainHome, navController:homeNavController)
        homeNavController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        homeCoordinator.finishDelegate = self
        homeCoordinator.start()
        
        let orderNavController = UINavigationController()
        let orderCoordinator = OrderCoorinator(type: .order, navController: orderNavController)
        orderNavController.tabBarItem = UITabBarItem(title: "Order", image: UIImage(systemName: "cart"), tag: 1)
        orderCoordinator.finishDelegate = self
        orderCoordinator.start()
        
        let myListNavController = UINavigationController()
        let myListCoordinator = MyListCoordinator(type: .infoList, navController:myListNavController)
        myListNavController.tabBarItem = UITabBarItem(title: "My List", image: UIImage(systemName: "person.circle"), tag: 2)
        myListCoordinator.finishDelegate = self
        myListCoordinator.start()
        
        let profileNavControlelr = UINavigationController()
        let profiletCoordinator = Profile(type: .profile, navController: profileNavControlelr)
        profileNavControlelr.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 3)
        profiletCoordinator.finishDelegate = self
        profiletCoordinator.start()
        
        addChild(coordinatorAdd: homeCoordinator)
        addChild(coordinatorAdd: orderCoordinator)
        addChild(coordinatorAdd: myListCoordinator)
        addChild(coordinatorAdd: profiletCoordinator)

        let tabBarContrllorel = [homeNavController,orderNavController,myListNavController,profileNavControlelr]
        let tabBarController = TabBarController(tabBarController: tabBarContrllorel)
        
        navigationController.pushViewController(tabBarController, animated: true)
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
    
        
    
        
     

