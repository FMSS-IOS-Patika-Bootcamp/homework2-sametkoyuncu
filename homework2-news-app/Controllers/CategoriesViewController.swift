//
//  CategoriesViewController.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 12.09.2022.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    let categories = [
        Category(id: 1, name: "Gündem"),
        Category(id: 2, name: "Ekonomi"),
        Category(id: 3, name: "Teknoloji"),
        Category(id: 4, name: "Bilim"),
        Category(id: 5, name: "Spor")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorStyle = .none
        
        navigationItem.hidesBackButton = true
        
        registerCustomCells()
    }
    
    @IBAction func closeMenuButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    // for register custom cells
    func registerCustomCells() {
        tableView.register(.init(nibName: K.Cell.logoCellNibName, bundle: nil), forCellReuseIdentifier: K.Cell.logoCellId)
        tableView.register(.init(nibName: K.Cell.headerCellNibName, bundle: nil), forCellReuseIdentifier: K.Cell.headerCellId)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newsVC: NewsViewController = segue.destination as! NewsViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            newsVC.selectedCategory = categories[indexPath.row]
        }
    }
}

extension CategoriesViewController: UITableViewDelegate {
    // When the table cell is selected, push the selected category and present the news screen.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // set notification for the selected category
        let catagory: [String: Category] = ["category": categories[indexPath.row-2]]
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: K.categoryNotification), object: nil, userInfo: catagory)
        // go news screen
        navigationController?.popViewController(animated: true)
    }
    
}

extension CategoriesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // two custon cell + categories count
        return categories.count + 2
    }
    // we have two custom cell and category cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // show custom logo cell
        if indexPath.row == 0 {
            
            self.tableView.rowHeight = 130
            
            let cell = tableView.dequeueReusableCell(withIdentifier: K.Cell.logoCellId, for: indexPath) as! LogoCell
            cell.logoImage.image = UIImage(named: K.logo)
            
            return cell
        }
        // show custom header cell
        else if indexPath.row == 1 {
            self.tableView.rowHeight = 80
            
            let cell = tableView.dequeueReusableCell(withIdentifier: K.Cell.headerCellId, for: indexPath) as! HeaderCell
            cell.headerLabel.font = UIFont.systemFont(ofSize: 34.0, weight: .bold)
            cell.headerLabel.text = "Kategoriler"
            
            return cell
        }
        // show category cells
        self.tableView.rowHeight = 60
        
        let cell = UITableViewCell()
        cell.textLabel?.font = UIFont.systemFont(ofSize: 24.0)
        cell.textLabel?.text = categories[indexPath.row-2].name
        return cell
    }
    
    
}
