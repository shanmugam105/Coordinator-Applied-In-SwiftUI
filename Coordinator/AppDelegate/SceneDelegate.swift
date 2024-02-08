//
//  SceneDelegate.swift
//  Coordinator
//
//  Created by Mohammad reza on 18.07.2022.
//

import SwiftUI

final class SceneDelegate: NSObject, UIWindowSceneDelegate {
        
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        //
        let vc = UIHostingController(rootView: MapView())
        appNavigationController = UINavigationController(rootViewController: vc)
        //
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = appNavigationController
        window?.makeKeyAndVisible()
    }
}
