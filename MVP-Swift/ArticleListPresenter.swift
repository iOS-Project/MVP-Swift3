//
//  ArticleListPresenter.swift
//  MVP-Swift
//
//  Created by Lun Sovathana on 12/10/16.
//  Copyright © 2016 DevCambodia. All rights reserved.
//

import Foundation

class ArticleListPresenter{
    
    var articleView:ArticleListViewProtocol!
    private var articleService:ArticleService!
    
    // LoadView
    func attachView(view: ArticleListViewProtocol){
        print("Presenter loadView")
        articleView = view
        articleService = ArticleService()
        articleService.articleListPresenter = self
    }
    
    func getArticles(title: String?, limit: Int = 1, page: Int = 1){
        print("Presenter getArticle")
        articleService.getArticles(title: title, limit: limit, page: page)
    }
    
}

extension ArticleListPresenter : ArticleListPresenterProtocol{
    
    func responseArticle(_ articles: [Article]) {
        // Response to view
        print("Present response to view")
        articleView.setArticle(articles)
    }
    
}
