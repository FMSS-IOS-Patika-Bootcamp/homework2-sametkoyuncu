//
//  DetailsViewController.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 12.09.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    // outlets
    @IBOutlet weak var detailsImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var readMoreButton: UIButton!
    
    // veriables
    var selectedNews: News?
    
    // lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDetails()
        
        readMoreButton.layer.cornerRadius = readMoreButton.frame.height / 2
        
        title = selectedNews?.title
    }
    
    @IBAction func readMoreButtonPressed(_ sender: UIButton) {
        let webKitVC = self.storyboard?.instantiateViewController(withIdentifier: K.ViewController.WebKit) as! WebKitViewController
         
        webKitVC.urlString = selectedNews?.url
        
        self.present(webKitVC, animated: true)
    }
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    func loadDetails() {
        detailsImage.image = UIImage(named: selectedNews?.imageName ?? "imageNotFound")
        titleLabel.text = selectedNews?.title
        bodyLabel.text = selectedNews?.body
    }
}


