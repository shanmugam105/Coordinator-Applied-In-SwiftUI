//
//  Coordinator.swift
//  Coordinator
//
//  Created by Mohammad reza on 18.07.2022.
//

import SwiftUI

public var appNavigationController: UINavigationController!

open class Coordinator<Router: NavigationRouter>: ObservableObject {
    
    public func show(_ route: Router, animated: Bool = true) {
        let view = route.view()
        let viewWithCoordinator = view.environmentObject(self)
        let viewController = UIHostingController(rootView: viewWithCoordinator)
        switch route.transition {
        case .push:
            appNavigationController.pushViewController(viewController, animated: animated)
        case .presentModally:
            viewController.modalPresentationStyle = .formSheet
            appNavigationController.present(viewController, animated: animated)
        case .presentFullscreen:
            viewController.modalPresentationStyle = .fullScreen
            appNavigationController.present(viewController, animated: animated)
        case .presentOverCurrentContext:
            viewController.modalPresentationStyle = .overCurrentContext
            appNavigationController.present(viewController, animated: animated)
        }
    }
    
    public func pop(animated: Bool = true) {
        appNavigationController.popViewController(animated: animated)
    }
    
    public func popToRoot(animated: Bool = true) {
        appNavigationController.popToRootViewController(animated: animated)
    }
    
    open func dismiss(animated: Bool = true) {
        appNavigationController.dismiss(animated: true)
    }
}
