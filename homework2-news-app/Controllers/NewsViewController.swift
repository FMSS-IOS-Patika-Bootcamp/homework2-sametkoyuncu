//
//  ViewController.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 11.09.2022.
//

import UIKit

class NewsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    // when change selected category, reload news
    var selectedCategory: Category? {
        didSet{
          loadNews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // add notification center for getting selected category from the categories view controller
        let notificationCenter: NotificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(self.changeCategory(_:)), name: .categoryNotification, object: nil)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        registerCell()
    }
    // notification center selector method for get and set selected category
    @objc func changeCategory(_ notification: NSNotification) {
        if let category = notification.userInfo?["category"] as? Category {
          selectedCategory = category
          }
    }
 
    // for register custom cell
    func registerCell() {
        collectionView.register(.init(nibName: K.Cell.newsCellNibName, bundle: nil), forCellWithReuseIdentifier: K.Cell.newsCellId)
    }
    
    // load news when selected category changed
    func loadNews() {
        print(selectedCategory?.name)
    }
}


extension NewsViewController: UICollectionViewDelegate {
}

extension NewsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    // set cell data
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.Cell.newsCellId, for: indexPath) as! NewsCell
        
        cell.titleLabel.text = "cell for \(indexPath.row)"
        cell.image.image = UIImage(named: "hamburgerMenu")
        
        return cell
    }
}
// set cell width using device sizes
extension NewsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 2 - 15
        let height = 320.0
        
        
        return CGSize(width: width, height: height)
    }
}
