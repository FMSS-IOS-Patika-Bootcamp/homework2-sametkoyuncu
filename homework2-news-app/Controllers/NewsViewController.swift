//
//  ViewController.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 11.09.2022.
//

import UIKit

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
    
    // lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add notification center for getting selected category from the categories view controller
        let notificationCenter: NotificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(self.changeCategory(_:)), name: .categoryNotification, object: nil)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.allowsMultipleSelection = false
        
        // selected category default value
        selectedCategory = DummyData.categories.first
        
        // register custom cells and filter news
        registerCustomCells()
        loadNews()
    }
    // notification center selector method for get and set selected category
    @objc func changeCategory(_ notification: NSNotification) {
        if let category = notification.userInfo?["category"] as? Category {
          selectedCategory = category
          }
    }
    
    // custom cells register
    func registerCustomCells() {
        collectionView.register(.init(nibName: K.Cell.newsCellNibName, bundle: nil), forCellWithReuseIdentifier: K.Cell.newsCellId)
        
        collectionView.register(.init(nibName: K.Cell.largeNewsCellNibName, bundle: nil), forCellWithReuseIdentifier: K.Cell.largeNewsCellId)
    }
    
    // load news when selected category changed
    func loadNews() {
        // filter news by category id
        filteredNews = DummyData.allNews.filter {
            if let selectedCategoryId = self.selectedCategory?.id, selectedCategoryId > 0  {
                return $0.categoryId == selectedCategoryId
            }
            // If the selected category id is 0, means 'all news'
            return true
        }
        
        // update navBar title
        // kategori 0'ın adı "hepsi" ama sayfa başlığı olarak güzel olmayacağı için
        // onun yerine "Tüm Haberler" yazdırıyorum
        if let selectedCategoryId = selectedCategory?.id, selectedCategoryId > 0 {
                title = selectedCategory?.name
        } else {
            title = "Tüm Haberler"
        }
        
        collectionView.reloadData()
        
        // scroll to top
        let topOffest = CGPoint(x: 0, y: -(self.collectionView?.contentInset.top ?? 0))
        self.collectionView.setContentOffset(topOffest, animated: true)
    }
}

// MARK: - collectionView delegate methods
extension NewsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // target view controller
        let detailsViewController = self.storyboard?.instantiateViewController(withIdentifier: K.ViewController.Details) as! DetailsViewController
   
        // find selected news
        let news = filteredNews[indexPath.row]
        // set selected news
        detailsViewController.selectedNews = news
        
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
        
        // show large custom cell
        // geniş cell göster + sadece ana ekranda göster.
        // diğer ekranların cell boyutları standart
        if let selectedCategoryId = selectedCategory?.id, selectedCategoryId == 0 {
            if (indexPath.row % 3 == 0) {
                // sanki bi tık DRY burası
                // benzer işlem aşağıda da var
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.Cell.largeNewsCellId, for: indexPath) as! LargeNewsCell

                let news = filteredNews[indexPath.row]
            
                cell.detailsImage.image = UIImage(named: news.imageName)
                cell.categoryLabel.text = DummyData.categories[news.categoryId].name
                cell.titleLabel.text = news.title
                cell.dateLabel.text = news.date
                
                return cell
            }
        }
        
        // show default custom cell
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
        // geniş cell göster + sadece ana ekranda göster
        // diğer ekranların cell boyutları standart
        if let selectedCategoryId = selectedCategory?.id, selectedCategoryId == 0 {
            if indexPath.row % 3 == 0 {
                let width = collectionView.frame.width - 20
                let height = collectionView.frame.width / 2
                // xx_rounded()
                // son row'daki cell inset'inde sorun yaşıyordum, o yüzden kullandım
                return CGSize(width: width, height: height).xx_rounded()
            }
        }
        // burası normal boyuttaki cell'ler için
        let width = collectionView.frame.width / 2 - 15
        let height = 320.0
        
        return CGSize(width: width, height: height).xx_rounded()
    }
}
