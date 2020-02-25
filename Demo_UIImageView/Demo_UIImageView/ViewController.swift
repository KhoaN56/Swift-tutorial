//
//  ViewController.swift
//  Demo_UIImageView
//
//  Created by Khoa Nguyen on 2/17/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Ánh xạ image view vào code để modify
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var internetImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Đổi hình theo tên ảnh có trong file assets
        img1.image = UIImage(named: "Earth and Moon")
        // Đổi chế độ hiển thị hình trong image view
        img1.contentMode = UIView.ContentMode.scaleToFill
        
        img2.layer.cornerRadius = img2.frame.size.width/2
        img2.clipsToBounds = true
        img2.contentMode = UIView.ContentMode.scaleToFill
        
        // Custom viền
        img3.layer.borderWidth = 2
        img3.layer.borderColor = UIColor.red.cgColor
        
        // Load hình từ url
        // Nếu link không phải là "https.." (http) thì phải thêm code xin quyền trong
        // file Info.plist
        // Link hướng dẫn: "https://www.youtube.com/watch?v=aaYtEVBpklk&list=PLzrVYRai0riSlAocQR3BvHCtEhcKa204E&index=20"
        let url:URL = URL(string: "https://media.macphun.com/img/uploads/customer/blog/504/15360610675b8e6e8b52bd36.49629027.jpg")!
        do{
            let data:Data = try Data(contentsOf: url)
            internetImage.image = UIImage(data: data)
        } catch {
            print("Không lấy được dữ liệu")
            print(error)
        }
    }


}

