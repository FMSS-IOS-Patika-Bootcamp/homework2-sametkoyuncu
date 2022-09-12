//
//  ViewController.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 11.09.2022.
//

import UIKit

class NewsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        registerCell()
        
    }
    
    func registerCell() {
        collectionView.register(.init(nibName: K.newsCellNibName, bundle: nil), forCellWithReuseIdentifier: K.newsCellId)
    }
}


extension NewsViewController: UICollectionViewDelegate {
}

extension NewsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.newsCellId, for: indexPath) as! NewsCell
        
        cell.titleLabel.text = "cell for \(indexPath.row)"
        cell.image.image = UIImage(named: "hamburgerMenu")
        
        return cell
    }
}

extension NewsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 2 - 15
        let height = 320.0
        
        
        return CGSize(width: width, height: height)
    }
}
