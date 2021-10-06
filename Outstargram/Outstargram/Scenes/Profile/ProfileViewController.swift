//
//  ProfileViewController.swift
//  Outstargram
//
//  Created by DGSW on 2021/10/06.
//

import UIKit
import SnapKit

final class ProfileViewController: UIViewController {
    
}

private extension ProfileViewController{
    func setUpNavigationItem() {
        navigationItem.title = "UserName"
        
        let rightBarButton = UIBarButtonItem(image: UIImage(systemName: "ellipsis"), style: .plain, target: self, action: nil)
    }
}
