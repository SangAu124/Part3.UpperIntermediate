//
//  RepositoryListCell.swift
//  GitHubRepo
//
//  Created by 김상은 on 2022/01/05.
//

import UIKit
import SnapKit

class RepositoryListCell: UITableViewCell {
    var repositry: String?
    
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
    }
}
