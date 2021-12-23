//
//  SeparatorView.swift
//  AppStore
//
//  Created by 김상은 on 2021/12/23.
//

import UIKit
import Then
import SnapKit

final class SeparatorView: UIView {
    private lazy var separator = UIView().then {
        $0.backgroundColor = .separator
    }
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addSubview(separator)
        separator.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(16.0)
            $0.trailing.equalToSuperview().inset(16.0)
            $0.top.equalToSuperview()
            $0.height.equalTo(0.5)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
