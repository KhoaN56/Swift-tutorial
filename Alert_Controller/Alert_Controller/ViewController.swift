//
//  ViewController.swift
//  Alert_Controller
//
//  Created by Khoa Nguyen on 2/17/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func alertBtn(_ sender: Any) {
        // Tạo alert dialog bằng UIAlertController
        let alert:UIAlertController = UIAlertController(title: "Alert", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
        
        // Button để thêm vào alert dialog
        let okBtn:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (btn) in
            print("Ok Khoa đẹp trai")
        }
        // Thêm button vào alert dialog
        alert.addAction(okBtn)
        // Hiển thị alert dialog
        present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

