//
//  ViewController.swift
//  Demo_Webview
//
//  Created by Khoa Nguyen on 2/18/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var webView: WKWebView!
    
    let link:String = "https://www.google.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Tạo url
        let url:URL = URL(string: link)!
        // Tạo request
        let req:URLRequest = URLRequest(url: url)
        // Tạo chạy request cho webview
        webView.load(req)
    }


}

