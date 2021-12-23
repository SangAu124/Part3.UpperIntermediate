//
//  TodayViewController.swift
//  AppStore
//
//  Created by 김상은 on 2021/12/23.
//

import UIKit
import SnapKit
import Then

final class TodayViewController: UIViewController {
    
    private lazy var collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        let CV = UICollectionView(frame: .zero, collectionViewLayout: layout)
        CV.delegate = self
        CV.dataSource = self
        
        CV.backgroundColor = .systemBackground
        CV.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "todayCell")
        
        return CV
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
}

extension TodayViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "todayCell", for: indexPath)
        cell.backgroundColor = .black
        
        return cell
    }
    
    
}

extension TodayViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width - 32.0
        return CGSize(width: width, height: width)
    }
}
