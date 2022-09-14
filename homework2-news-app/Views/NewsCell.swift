//
//  NewsCell.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 12.09.2022.
//

import UIKit

class NewsCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.layer.cornerRadius = 10
    }
}

