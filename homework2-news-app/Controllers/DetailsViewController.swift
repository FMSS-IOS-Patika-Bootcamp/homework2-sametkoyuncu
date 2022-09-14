//
//  DetailsViewController.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 12.09.2022.
//

import UIKit

// MARK: - AÇIKLAMA
/*
    ScrollView kullanmayı beceremediğim için, haber detaylarını TableView'de gösteriyorun.
    Görsel, Başlık, İçerik ve Buton için ayrı cell oluşturup, onları çağırdım.
 */

class DetailsViewController: UIViewController {
    // outlets
    @IBOutlet weak var tableView: UITableView!
    // veriables
    var selectedNews: News?
    
    // lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        registerCustomCells()
        
        title = selectedNews?.title
    }
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    // for register custom cells
    func registerCustomCells() {
        // image cell
        tableView.register(.init(nibName: K.Cell.detailsImageCellNibName, bundle: nil), forCellReuseIdentifier: K.Cell.detailsImageCellId)
        // title cell
        tableView.register(.init(nibName: K.Cell.detailsTitleCellNibName, bundle: nil), forCellReuseIdentifier: K.Cell.detailsTitleCellId)
        // body cell
        tableView.register(.init(nibName: K.Cell.detailsBodyCellNibName, bundle: nil), forCellReuseIdentifier: K.Cell.detailsBodyCellId)
        // button cell
        tableView.register(.init(nibName: K.Cell.detailsButtonCellNibName, bundle: nil), forCellReuseIdentifier: K.Cell.detailsButtonCellId)
    
    }

}

// MARK: - news delegate method
extension DetailsViewController: NewsViewControllerDelegate {
    func didNewsSelected(_ news: News) {
        selectedNews = news
    }
}

// MARK: - table view delegate and datasource methods
extension DetailsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // butonu çalıştıramadığım için
        // table view'in butona gelen
        // satırını buton gibi kullanıyorum
        if indexPath.row == 3 {
            let webKitVC = self.storyboard?.instantiateViewController(withIdentifier: K.ViewController.WebKit) as! WebKitViewController
             
            webKitVC.urlString = selectedNews?.url
            
            self.present(webKitVC, animated: true)
        }
        
    }
}

extension DetailsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Görsel satırı
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: K.Cell.detailsImageCellId, for: indexPath) as! DetailsImageCell
            
            cell.detailsImage.image = UIImage(named: selectedNews?.imageName ?? "imageNotFound")
            
            return cell
        }
        // Başlık satırı
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: K.Cell.detailsTitleCellId, for: indexPath) as! DetailsTitleCell
            
            // selected cell background color
            let bgColorView = UIView()
            bgColorView.backgroundColor = UIColor.white
            cell.selectedBackgroundView = bgColorView
            
            cell.detailsTitleLabel.text = selectedNews?.title
            
            return cell
        }
        // İçerik Satırı
        else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: K.Cell.detailsBodyCellId, for: indexPath) as! DetailsBodyCell
            
            // selected cell background color
            let bgColorView = UIView()
            bgColorView.backgroundColor = UIColor.white
            cell.selectedBackgroundView = bgColorView
            
            cell.detailsBodyLabel.text = selectedNews?.body
            
            return cell
        }
        // else - zaten yukarıdaki koşullar 'return' kullandığı için
        //        ekstra 'else' bloğu açmadım
        
        // Buton satırı
        let cell = tableView.dequeueReusableCell(withIdentifier: K.Cell.detailsButtonCellId, for: indexPath) as! DetailsButtonCell
        // selected cell background color
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.white
        cell.selectedBackgroundView = bgColorView
        
        return cell
    }
}


