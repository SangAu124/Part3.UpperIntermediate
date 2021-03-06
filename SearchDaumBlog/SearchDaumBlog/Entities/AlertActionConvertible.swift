//
//  AlertActionConvertible.swift
//  SearchDaumBlog
//
//  Created by κΉμμ on 2022/01/12.
//

import UIKit

protocol AlertActionConvertible {
    var title: String { get }
    var style: UIAlertAction.Style { get }
}
