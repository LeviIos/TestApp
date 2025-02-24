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

protocol CoordinatorsProtocol : AnyObject {
    var childInCoordinator : [CoordinatorsProtocol] {get set}
    var type : CoordinatorsType { get }
    var navController : UINavigationController? { get }
    var finishDelegate : CoordinatorFinishDelegate? { get  }
    
    func start()
    func finish()
}

extension CoordinatorsProtocol {
    func addChild(coordinatorAdd: CoordinatorsProtocol) {
        childInCoordinator.append(coordinatorAdd)
        
    }
    func removeChlid(coordinatorRemove: CoordinatorsProtocol) {
        childInCoordinator = childInCoordinator.filter{$0 !== coordinatorRemove}
    }
}

protocol CoordinatorFinishDelegate {
    func coordinatorDidFinish(_ coordinator: CoordinatorsProtocol)
    
}
