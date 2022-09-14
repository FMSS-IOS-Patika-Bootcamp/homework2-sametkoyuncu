//
//  DetailsImageCell.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 13.09.2022.
//

import UIKit

class DetailsImageCell: UITableViewCell {
    
    @IBOutlet weak var detailsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
