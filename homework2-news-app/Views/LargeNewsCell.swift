//
//  LargeNewsCell.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 14.09.2022.
//

import UIKit

class LargeNewsCell: UICollectionViewCell {
    @IBOutlet weak var detailsImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 10
    }

}
