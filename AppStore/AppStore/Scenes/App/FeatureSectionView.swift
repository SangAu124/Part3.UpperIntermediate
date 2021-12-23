//
//  featureSectionView.swift
//  AppStore
//
//  Created by 김상은 on 2021/12/23.
//

import UIKit
import Then
import SnapKit

final class FeatureSectionView: UIView {
    private lazy var collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        cv.delegate = self
        cv.dataSource = self
        cv.isPagingEnabled = true
        cv.backgroundColor = .systemBackground
        cv.showsHorizontalScrollIndicator = false
        
        cv.register(
            UICollectionViewCell.self,
            forCellWithReuseIdentifier: "FeatureSectionCollectionViewCell"
        )
        
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension FeatureSectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeatureSectionCollectionViewCell", for: indexPath)
        cell.backgroundColor = .blue
        
        return cell
    }
    
    
}

extension FeatureSectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width - 32.0, height: frame.width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0.0, left: 16.0, bottom: 0.0, right: 16.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        32.0
    }
}

private extension FeatureSectionView{
    func setupViews() {
        [
            collectionView
        ].forEach{ addSubview($0)}
        
        
        collectionView.snp.makeConstraints{
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview().inset(16.0)
            $0.height.equalTo(snp.width)
            $0.bottom.equalToSuperview()
        }
    }
}
