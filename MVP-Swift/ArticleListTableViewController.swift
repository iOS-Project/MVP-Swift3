//
//  ArticleListTableViewController.swift
//  MVP-Swift
//
//  Created by Lun Sovathana on 12/10/16.
//  Copyright © 2016 DevCambodia. All rights reserved.
//

import UIKit

class ArticleListTableViewController: UITableViewController {

    var articleListPresenter:ArticleListPresenter!
    var articleList = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set Presenter Object
        articleListPresenter = ArticleListPresenter()
        // Load View : Set Delegate
        
        articleListPresenter.attachView(view: self)
        // Get all article
        articleListPresenter.getArticles(title: "Hello", limit: 10, page: 1)
    }

}

extension ArticleListTableViewController : ArticleListViewProtocol{
    
    func setArticle(_ articles: [Article]) {
        print("setArticle")
        self.tableView.reloadData()
    }
    
    func setEmptyArticle() {
        print("setEmptyArticle")
    }
}
