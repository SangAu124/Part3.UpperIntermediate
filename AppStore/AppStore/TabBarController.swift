//
//  TabBarController.swift
//  AppStore
//
//  Created by 김상은 on 2021/12/22.
//

import UIKit
import Then

class TabBarController: UITabBarController {
    
    private lazy var todayViewController = UIViewController().then {
        let tabBarItem = UITabBarItem(
            title: "투데이",
            image: UIImage(systemName: "mail"),
            tag: 0
        )
        $0.tabBarItem = tabBarItem
    }

    private lazy var appViewController = UIViewController().then {
        let tabBarItem = UITabBarItem(
            title: "앱",
            image: UIImage(systemName: "square.stack.3d.up"),
            tag: 1
        )
        $0.tabBarItem = tabBarItem
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [todayViewController, appViewController]
    }


}

