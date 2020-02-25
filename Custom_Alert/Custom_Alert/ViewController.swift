//
//  ViewController.swift
//  Custom_Alert
//
//  Created by Khoa Nguyen on 2/17/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        let alert:UIAlertController = UIAlertController(title: "Alert", message: "Please enter the information", preferredStyle: UIAlertController.Style.alert)
        // Thêm text field vào alert dialog để nhận thông tin nhập từ người dùng
        // Sau dấu ngoặc nhọn là cú pháp để cài đặt cho text field
        alert.addTextField{(emailTxt) in
            emailTxt.placeholder = "Enter your email"
        }
        // Thêm text field vào alert dialog để nhận thông tin nhập từ người dùng
        // Sau dấu ngoặc nhọn là cú pháp để cài đặt cho text field
        alert.addTextField {(passwordTxt) in
            passwordTxt.placeholder = "Enter your password"
            passwordTxt.isSecureTextEntry = true
        }
        // Cài đặt nút cho alert dialog và xử lý sự kiện click
        // Sau dấu ngoặc nhọn là cú pháp cài đặt code xử lý sự kiện click button.
        // Trong alert dialog có bao nhiêu text field đã được cài đặt thì sẽ được lấy ra theo thứ tự được add vào trong mảng các text field của alert dialog
        let okBtn:UIAlertAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default){ (btn) in
            let email:String = alert.textFields![0].text!
            let password:String = alert.textFields![1].text!
            print(email, password)
        }
        // Thêm nút vào alert dialog
        alert.addAction(okBtn)
        // Hiển thị alert dialog
        present(alert, animated: true, completion: nil)
    }
    
}

