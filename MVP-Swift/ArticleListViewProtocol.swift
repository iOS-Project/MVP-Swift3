//
//  ArticleListActionProtocol.swift
//  MVP-Swift
//
//  Created by Lun Sovathana on 12/10/16.
//  Copyright © 2016 DevCambodia. All rights reserved.
//

import Foundation

protocol ArticleListViewProtocol {
    func updateView()
    func setArticle(_ articles: [Article])
    func setEmptyArticle()
}
