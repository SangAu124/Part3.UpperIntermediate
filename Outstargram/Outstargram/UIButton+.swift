//
//  UIButton+.swift
//  Outstargram
//
//  Created by DGSW on 2021/10/05.
//

import UIKit

extension UIButton{
    func setImage(systemName: String){
        contentHorizontalAlignment = .fill
        contentVerticalAlignment = .fill
        
        imageView?.contentMode = .scaleAspectFit
        imageEdgeInsets = .zero
        
        setImage(UIImage(systemName: systemName), for: .normal)
    }
}
