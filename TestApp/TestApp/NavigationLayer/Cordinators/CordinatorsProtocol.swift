//
//  CordinatorsProtocol.swift
//  TestApp
//
//  Created by Andrey on 24.02.2025.
//

import UIKit

//type cordinator
enum CoordinatorsType {
    case app
    case onbordingApp
    case order
    case mainHome
    case profile
    case infoList
}

protocol CoordinatorsProtocoll : AnyObject {
    var childInCoordinator : [CoordinatorsProtocoll] {get set}
    var type : CoordinatorsType { get }
    var navController : UINavigationController? { get set}
    var finishDelegate : CoordinatorFinishDelegate? { get set}
    
    func start()
    func finish()
}

extension CoordinatorsProtocoll {
    func addChild(coordinatorAdd: CoordinatorsProtocoll) {
        childInCoordinator.append(coordinatorAdd)
        
    }
    func removeChlid(coordinatorRemove: CoordinatorsProtocoll) {
        childInCoordinator = childInCoordinator.filter{$0 !== coordinatorRemove}
    }
}

protocol CoordinatorFinishDelegate : AnyObject {
    func coordinatorDidFinish(_ coordinator: CoordinatorsProtocoll)
    
}

protocol TabBarCoordinator : AnyObject, CoordinatorsProtocoll {
    var tabBarController : UITabBarController? { get set }
}

class Coordinator : CoordinatorsProtocoll {
    
    var childInCoordinator: [CoordinatorsProtocoll]
    
    var type: CoordinatorsType
    
    var navController: UINavigationController?
    
    var finishDelegate: CoordinatorFinishDelegate?
    
    init(childInCoordinator: [CoordinatorsProtocoll] = [CoordinatorsProtocoll](), type: CoordinatorsType, navController: UINavigationController, finishDelegate: CoordinatorFinishDelegate? = nil) {
        self.childInCoordinator = childInCoordinator
        self.type = type
        self.navController = navController
        self.finishDelegate = finishDelegate
    }
    
    deinit {
        print("Coordinator deinit \(type)")
        childInCoordinator.forEach { $0.finishDelegate = nil }
        childInCoordinator.removeAll()
    }
    
    func start() {
        print("Coordinator started")
    }
    
    func finish() {
        print("Coordinates finished")
    }
    
    
}
