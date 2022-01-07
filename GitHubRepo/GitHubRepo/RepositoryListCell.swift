//
//  RepositoryListCell.swift
//  GitHubRepo
//
//  Created by 김상은 on 2022/01/05.
//

import UIKit
import SnapKit

class RepositoryListCell: UITableViewCell {
    var repositry: Repository?
    
    let nameLabel = UILabel()
    
    
    let dedscriptionLabel = UILabel()
    let starImageView = UIImageView()
    let starLabel = UILabel()
    let languageLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        [
            nameLabel, dedscriptionLabel,
            starImageView, starLabel, languageLabel
        ].forEach {
            contentView.addSubview($0)
        }
        
        guard let repositry = repositry else { return }

        nameLabel.text = repositry.name
        nameLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        dedscriptionLabel.text = repositry.description
        dedscriptionLabel.font = .systemFont(ofSize: 15)
        dedscriptionLabel.numberOfLines = 2
        
        starImageView.image = UIImage(systemName: "star")
        
        starLabel.text = "\(repositry.stargazersCount)"
        starLabel.font = .systemFont(ofSize: 16)
        starLabel.textColor = .gray
        
        languageLabel.text = repositry.language
        languageLabel.font = .systemFont(ofSize: 16)
        languageLabel.textColor = .gray
        
        nameLabel.snp.makeConstraints{
            $0.top.leading.trailing.equalToSuperview().inset(18)
        }
        
        dedscriptionLabel.snp.makeConstraints{
            $0.top.equalTo(nameLabel.snp.bottom).offset(3)
            $0.leading.trailing.equalTo(nameLabel)
        }
        
        starImageView.snp.makeConstraints{
            $0.top.equalTo(dedscriptionLabel.snp.bottom).offset(8)
            $0.leading.equalTo(dedscriptionLabel)
            $0.width.height.equalTo(20)
            $0.bottom.equalToSuperview().inset(18)
        }
        
        starLabel.snp.makeConstraints{
            $0.centerY.equalTo(starImageView)
            $0.leading.equalTo(starImageView.snp.trailing).offset(5)
        }
        
        languageLabel.snp.makeConstraints{
            $0.centerY.equalTo(starLabel)
            $0.leading.equalTo(starLabel.snp.trailing).offset(12)
        }
        
    }
}
