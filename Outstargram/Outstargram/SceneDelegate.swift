//
//  SceneDelegate.swift
//  Outstargram
//
//  Created by DGSW on 2021/10/04.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = .systemBackground
        window?.rootViewController = tabBarcontroller()
        window?.tintColor = .label
        window?.makeKeyAndVisible()
    }
}

