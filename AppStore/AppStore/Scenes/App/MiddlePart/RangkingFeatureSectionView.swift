//
//  RangkingFeatureSectionView.swift
//  AppStore
//
//  Created by 김상은 on 2021/12/23.
//

import UIKit
import Then
import SnapKit

final class RangkingFeatureSectionView: UIView {
    
    private let cellHeight: CGFloat = 30.0
    
    private lazy var titleLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 18.0, weight: .black)
        $0.text = "iPhone이 처음이라면"
    }
    
    private lazy var showAllAppsButton = UIButton().then {
        $0.setTitle("모두 보기", for: .normal)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 14.0, weight: .semibold)
    }
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 32.0
        layout.minimumInteritemSpacing = 0.0
        layout.sectionInset = UIEdgeInsets(top: 0.0, left: 16.0, bottom: 0.0, right: 16.0)
        
        let cv = UICollectionView(
            frame: .zero,
            collectionViewLayout: layout
        )
        cv.dataSource = self
        cv.delegate = self
        cv.isPagingEnabled = true
        cv.backgroundColor = .systemBackground
        cv.showsHorizontalScrollIndicator = false
        
        cv.register(
            UICollectionViewCell.self,
            forCellWithReuseIdentifier: "RangkingFeatureSectionViewCell"
        )
       return cv
    }()
    
    private let separatorView = SeparatorView(frame: .zero)
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RangkingFeatureSectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(
            width: collectionView.frame.width - 32,
            height: cellHeight
        )
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        9
    }
    
}

extension RangkingFeatureSectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "RangkingFeatureSectionViewCell",
            for: indexPath
        )
        
        cell.backgroundColor = .red
        
        return cell
    }
}

private extension RangkingFeatureSectionView {
    func setupLayout() {
        [
            titleLabel,
            showAllAppsButton,
            collectionView,
            separatorView
        ].forEach{ addSubview($0) }
        
        titleLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(16.0)
            $0.trailing.equalTo(showAllAppsButton.snp.leading).offset(8.0)
            $0.top.equalToSuperview().inset(16.0)
        }
        
        showAllAppsButton.snp.makeConstraints{
            $0.trailing.equalToSuperview().inset(16.0)
            $0.bottom.equalTo(titleLabel.snp.bottom)
        }
        
        collectionView.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(16.0)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.height.equalTo(cellHeight * 3)
        }
        
        separatorView.snp.makeConstraints{
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalTo(collectionView.snp.bottom).offset(16.0)
            $0.bottom.equalToSuperview()
        }
    }
}
