//
//  DetailsButtonCell.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 13.09.2022.
//

import UIKit

class DetailsButtonCell: UITableViewCell {
   
    @IBOutlet weak var readMoreLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        readMoreLabel.layer.cornerRadius = readMoreLabel.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
