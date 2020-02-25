//
//  ViewController.swift
//  Demo_Gallery
//
//  Created by Khoa Nguyen on 2/17/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let picNames: Array<String> = ["Abstract", "Bahamas Aerial", "Earth and Moon", "Elephant", "Floating Ice", "Milky Way", "Poppies"]
    var index:Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    // Nếu vô tình tạo ánh xạ không mong muốn, click phải vào component đó trong file giao diện, xoá liên kết đã tạo với file code.
    @IBAction func backBtn(_ sender: Any) {
        guard index > 0 else {
            index = picNames.count-1
            imageView.image = UIImage(named: picNames[index])
            return
        }
        index -= 1
        imageView.image = UIImage(named: picNames[index])
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        guard index < picNames.count - 1 else{
            index = 0
            imageView.image = UIImage(named: picNames[index])
            return
        }
        index += 1
        imageView.image = UIImage(named: picNames[index])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: picNames[index])
    }
    
    
}

