//
//  Constants.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 12.09.2022.
//

struct K {
    
    static let logo = "logo"
    static let categoryLogo = "categoryLogo"
    
    // notification center IDs
    struct Notification {
        static let selectedCategory = "CategoryNotification"
    }
    
    // custom cell properties
    struct Cell {
        static let newsCellNibName = "NewsCell"
        static let newsCellId = "newsCellId"
        
        static let largeNewsCellNibName = "LargeNewsCell"
        static let largeNewsCellId = "largeNewsCellId"
        
        
        static let logoCellNibName = "LogoCell"
        static let logoCellId = "logoCellId"
        
        static let headerCellNibName = "HeaderCell"
        static let headerCellId = "headerCellId"
        
        static let detailsImageCellNibName = "DetailsImageCell"
        static let detailsImageCellId = "detailsImageCellId"
        
        static let detailsTitleCellNibName = "DetailsTitleCell"
        static let detailsTitleCellId = "detailsTitleCellId"
        
        static let detailsBodyCellNibName = "DetailsBodyCell"
        static let detailsBodyCellId = "detailsBodyCellId"
        
        static let detailsButtonCellNibName = "DetailsButtonCell"
        static let detailsButtonCellId = "detailsButtonCellId"
    }
    
    // view controller IDs
    struct ViewController {
        static let WebKit = "WebKitViewController"
        static let Details = "DetailsViewController"
    }
}
