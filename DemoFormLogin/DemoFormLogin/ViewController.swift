//
//  ViewController.swift
//  DemoFormLogin
//
//  Created by Khoa Nguyen on 2/17/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Hàm này sẽ chạy khi view đã được hiển thị
    override func viewDidAppear(_ animated: Bool) {
        let alert:UIAlertController = UIAlertController(title: "Log in", message: "Please enter your informations", preferredStyle: UIAlertController.Style.alert)
        // Thêm text field nhập email
        alert.addTextField { (emailTxt) in
            emailTxt.placeholder = "✉️ Enter your email"
        }
        // Thêm text field nhập password
        alert.addTextField { (passwordTxt) in
            // Thêm place holder
            passwordTxt.placeholder = "🔒 Enter your password"
            // Mã hoá mật khẩu nhập vào
            passwordTxt.isSecureTextEntry = true
        }
        // Tạo nút log in
        //Sau dấu ngoặc nhọn là code xử lý sự kiện bấm nút
        let loginBtn = UIAlertAction(title: "Log in", style: UIAlertAction.Style.cancel) { (loginBtn) in
            // Lấy email đã nhập vào từ người dùng
            let email:String = alert.textFields![0].text!
            // Lấy password đã nhập vào từ người dùng
            let password:String = alert.textFields![1].text!
            // Kiểm tra điều kiện nhập
            if(email == "abc@xyz" && password == "123456"){
                self.result(mess: "Log in successful")
            } else{
                self.result(mess: "Log in failed")
            }
        }
        // Cài đặt nút huỷ
        let cancelBtn = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.destructive) { (abortBtn) in
            // Dòng dưới này không có tác dụng
            self.viewWillDisappear(true)
        }
        // Thêm nút login vào alert dialog
        alert.addAction(loginBtn)
        // Thêm nút cancel vào alert dialog
        alert.addAction(cancelBtn)
        // Hiển thị dialog
        present(alert, animated: true, completion: nil)
    }
    
    func result(mess: String){
        // Tạo alert dialog
        let alert: UIAlertController = UIAlertController(title: "Alert", message: mess, preferredStyle: .alert)
        // Tạo nút OK
        let okBtn:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        // Thêm nút OK vào alert dialog
        alert.addAction(okBtn)
        // Hiển thị alert dialog
        present(alert, animated: true, completion: nil)
    }
}

