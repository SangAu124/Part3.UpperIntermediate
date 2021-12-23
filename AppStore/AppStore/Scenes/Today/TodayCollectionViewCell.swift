//
//  TodayCollectionViewCell.swift
//  AppStore
//
//  Created by 김상은 on 2021/12/23.
//

import UIKit
import SnapKit
import Then

final class TodayCollectionViewCellL: UICollectionViewCell {
    
    private lazy var subtitleLabel = UILabel().then {
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 14.0, weight: .bold)
    }
    
    private lazy var titleLabel = UILabel().then {
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 24.0, weight: .bold)
    }
    
    private lazy var descriptionLabel = UILabel().then {
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 14.0, weight: .bold)
    }
    
    private lazy var imageView = UIImageView().then {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 12.0
        $0.backgroundColor = .gray
    }
    
    
    func setup() {
        setupSubView()
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 10
        
        subtitleLabel.text = "서브타이틀"
        descriptionLabel.text = "설명설명타이틍"
        titleLabel.text = "앱의 이름"
    }
}

private extension TodayCollectionViewCellL {
    
    func setupSubView() {
        [
            imageView, titleLabel, subtitleLabel, descriptionLabel
        ].forEach{ addSubview($0) }
        
        subtitleLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(24.0)
            $0.trailing.equalToSuperview().inset(24.0)
            $0.top.equalToSuperview().inset(24.0)
        }
        titleLabel.snp.makeConstraints{
            $0.leading.equalTo(subtitleLabel)
            $0.trailing.equalTo(subtitleLabel)
            $0.top.equalTo(subtitleLabel.snp.bottom).offset(4.0)
        }
        descriptionLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(24.0)
            $0.trailing.equalToSuperview().inset(24.0)
            $0.bottom.equalToSuperview().inset(24.0)
        }
        imageView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        
    }
    
}
