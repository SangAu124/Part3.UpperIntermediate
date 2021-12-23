//
//  FeatureSectionCollectionViewCell.swift
//  AppStore
//
//  Created by 김상은 on 2021/12/23.
//

import UIKit
import Then
import SnapKit

final class FeatureSectionCollectionViewCell: UICollectionViewCell {
    
    private lazy var typeLabel = UILabel().then {
        $0.textColor = .systemBlue
        $0.font = .systemFont(ofSize: 12.0, weight: .semibold)
    }
    
    private lazy var appNameLabel = UILabel().then {
        $0.textColor = .label
        $0.font = .systemFont(ofSize: 20.0, weight: .bold)
    }
    
    private lazy var descriptionLabel = UILabel().then {
        $0.textColor = .secondaryLabel
        $0.font = .systemFont(ofSize: 16.0, weight: .semibold)
    }
    
    private lazy var imageView = UIImageView().then {
        $0.layer.cornerRadius = 7.0
        $0.layer.borderWidth = 0.5
        $0.layer.borderColor = UIColor.separator.cgColor
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
    }
    
    func setup() {
        setupLayout()
        
        typeLabel.text = "adf"
        appNameLabel.text = "ad"
        descriptionLabel.text = "adfadfsasdfadf"
        imageView.backgroundColor = .lightGray
    }
}

private extension FeatureSectionCollectionViewCell {
    func setupLayout() {
        [
            typeLabel,
            appNameLabel,
            descriptionLabel,
            imageView
        ].forEach{ addSubview($0) }
        
        typeLabel.snp.makeConstraints{
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview()
        }
        
        appNameLabel.snp.makeConstraints{
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalTo(typeLabel.snp.bottom)
        }
        
        descriptionLabel.snp.makeConstraints{
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalTo(appNameLabel.snp.bottom).offset(4.0)
        }
        
        imageView.snp.makeConstraints{
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalTo(descriptionLabel.snp.bottom).offset(8.0)
            $0.bottom.equalToSuperview().inset(8.0)
        }
    }
}
