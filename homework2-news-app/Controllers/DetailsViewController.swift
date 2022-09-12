//
//  DetailsViewController.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 12.09.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    // outlets
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var readMoreButton: UIButton!
    
    // veriables
    var selectedNews: News?
    
    // lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        readMoreButton.layer.cornerRadius = readMoreButton.frame.height / 2
        
        loadDetails()
    }
    
    // component actions
    @IBAction func backButtonPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    // helper methods
    func loadDetails() {
        DispatchQueue.main.async { [weak self] in
            if let image = self?.selectedNews?.imageName {
                self?.newsImage.image = UIImage(named: image)
            } else {
                self?.newsImage.image = UIImage(named: "imageNotFound")
            }
            
            self?.title = self?.selectedNews?.title
            self?.titleLabel.text = self?.selectedNews?.title
            self?.bodyLabel.text = self?.selectedNews?.body
        }
    }

}

// MARK: - news delegate method
extension DetailsViewController: NewsViewControllerDelegate {
    func didNewsSelected(_ news: News) {
        selectedNews = news
    }
}
