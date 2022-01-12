//
//  AlertActionConvertible.swift
//  SearchDaumBlog
//
//  Created by 김상은 on 2022/01/12.
//

import UIKit

protocol AlertActionConvertible {
    var title: String { get }
    var style: UIAlertAction.Style { get }
}
