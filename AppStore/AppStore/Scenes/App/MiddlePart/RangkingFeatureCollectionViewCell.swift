//
//  RangkingFeatureCollectionViewCell.swift
//  AppStore
//
//  Created by 김상은 on 2021/12/23.
//

import UIKit
import Then
import SnapKit

final class RangkingFeatureCollectionViewCell: UICollectionViewCell {
    
    private lazy var imageView = UIImageView().then {
        $0.backgroundColor = .tertiarySystemGroupedBackground
        $0.layer.borderColor = UIColor.tertiaryLabel.cgColor
        $0.layer.borderWidth = 0.5
        $0.layer.cornerRadius = 7.0
    }
    
    private lazy var titleLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 16.0, weight: .bold)
        $0.textColor = .label
        $0.numberOfLines = 2
    }
    
    private lazy var descriptionLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 13.0, weight: .semibold)
        $0.textColor = .secondaryLabel
    }
    
    private lazy var downloadButton = UIButton().then {
        $0.setTitle("받기", for: .normal)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 13.0, weight: .bold)
        $0.backgroundColor = .secondarySystemBackground
        $0.layer.cornerRadius = 12.0
    }
    
    private lazy var inAppPurchaseInfoLabel = UILabel().then {
        $0.text = "앱 내 구입"
        $0.font = .systemFont(ofSize: 10.0, weight: .semibold)
        $0.textColor = .secondaryLabel
    }
}
