//
//  ArticleCell.swift
//  MVP-Swift
//
//  Created by Lun Sovathana on 12/10/16.
//  Copyright © 2016 DevCambodia. All rights reserved.
//

import UIKit

class ArticleCell: UITableViewCell {

    @IBOutlet weak var articleImage: UIImageView!
    
    @IBOutlet weak var articleTitle: UILabel!
    
    @IBOutlet weak var articleDescription: UILabel!
    
    // Return Cell
    static func nib() -> UINib{
        return UINib(nibName: String(describing: Article.self), bundle: nil)
    }
    
    // Update cell
    func updateCell(title: String?, description: String?, image: UIImage?){
        self.articleTitle.text = title
        self.articleDescription.text = description
        self.articleImage.image = image
    }
    
}
