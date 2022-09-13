//
//  ViewController.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 11.09.2022.
//

import UIKit

protocol NewsViewControllerDelegate {
    func didNewsSelected(_ news: News)
}

class NewsViewController: UIViewController {
    // outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // veriables
    // when change selected category, reload news
    var selectedCategory: Category? {
        didSet{
          loadNews()
        }
    }
    
    var filteredNews: [News] = []
    
    var delegate: NewsViewControllerDelegate?

    // lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add notification center for getting selected category from the categories view controller
        let notificationCenter: NotificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(self.changeCategory(_:)), name: .categoryNotification, object: nil)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.allowsMultipleSelection = false
        
        registerCell()
        loadNews()
    }
    // notification center selector method for get and set selected category
    @objc func changeCategory(_ notification: NSNotification) {
        if let category = notification.userInfo?["category"] as? Category {
          selectedCategory = category
          }
    }
    
    // custom cell register
    func registerCell() {
        collectionView.register(.init(nibName: K.Cell.newsCellNibName, bundle: nil), forCellWithReuseIdentifier: K.Cell.newsCellId)
    }
    
    // load news when selected category changed
    func loadNews() {
        // filter news
        filteredNews = DummyData.news.filter {
            if let selectedCategoryId = self.selectedCategory?.id, selectedCategoryId > 0  {
                return $0.categoryId == selectedCategoryId
            }
            
            return true
        }
        
        // update navBar title
        if let selectedCategoryId = selectedCategory?.id, selectedCategoryId > 0 {
                title = selectedCategory?.name
        } else {
            title = "Tüm Haberler"
        }
        
        collectionView.reloadData()
    }
}

// MARK: - collectionView delegate methods
extension NewsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // target view controller
        let detailsViewController = self.storyboard?.instantiateViewController(withIdentifier: K.ViewController.Details) as! DetailsViewController
        
        self.delegate = detailsViewController
        // find selected new
        let news = filteredNews[indexPath.row]
        // set selected news
        self.delegate?.didNewsSelected(news)
        
        // go details screen
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}

// MARK: - collectionView data source methods
extension NewsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredNews.count
    }
    // set cell data
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.Cell.newsCellId, for: indexPath) as! NewsCell
        
        let news = filteredNews[indexPath.row]
        
        cell.titleLabel.text = news.title
        cell.image.image = UIImage(named: news.imageName)
        cell.dateLabel.text = news.date
        cell.categoryLabel.text = DummyData.categories[news.categoryId].name
        
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
