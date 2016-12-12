//
//  ArticleService.swift
//  MVP-Swift
//
//  Created by Lun Sovathana on 12/10/16.
//  Copyright © 2016 DevCambodia. All rights reserved.
//

import Foundation

class ArticleService{
    
    var articleListPresenter:ArticleListPresenterProtocol!
    
    func getArticles(title: String?, limit: Int = 1, page: Int = 1){
        
        print("Article Get with title \(title!) limit \(limit) \(page)")
        
        var arr = [Article]()
        arr.append(Article())
        articleListPresenter.responseArticle(arr)
        
    }
    
}
