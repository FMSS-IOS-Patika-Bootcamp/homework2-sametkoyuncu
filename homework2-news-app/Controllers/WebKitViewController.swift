//
//  WebKitViewController.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 13.09.2022.
//

import UIKit
import WebKit

class WebKitViewController: UIViewController {
    @IBOutlet weak var webKit: WKWebView!
    
    var urlString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let urlStr = urlString {
            let url = URL(string: urlStr)!
            
            let request  = URLRequest(url: url)
            
            webKit.load(request)
        }
       
        webKit.allowsBackForwardNavigationGestures = true
    }

    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
}
