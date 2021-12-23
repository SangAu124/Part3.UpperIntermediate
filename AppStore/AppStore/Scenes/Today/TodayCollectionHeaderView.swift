//
//  TodayCollectionHeaderView.swift
//  AppStore
//
//  Created by 김상은 on 2021/12/23.
//

import UIKit
import SnapKit
import Then

final class TodayCollectionHeaderView: UICollectionReusableView {
    
    private lazy var dateLabel = UILabel().then {
        $0.text = "12월 23일 목요일"
        $0.font = .systemFont(ofSize: 14.0, weight: .semibold)
        $0.textColor = .secondaryLabel
    }
    
    private lazy var titleLabel = UILabel().then {
        $0.text = "투데이"
        $0.font = .systemFont(ofSize: 36.0, weight: .black)
        $0.textColor = .label
    }
    
}

extension TodayCollectionHeaderView {
    func setupViews() {
        [
            dateLabel, titleLabel
        ].forEach{ addSubview($0) }
        
        dateLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(16.0)
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview().inset(32)
        }
        titleLabel.snp.makeConstraints{
            $0.leading.equalTo(dateLabel)
            $0.top.equalTo(dateLabel.snp.bottom).offset(8.0)
        }
    }
}
