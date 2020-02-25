//
//  ViewController.swift
//  Demo_TextField_Label
//
//  Created by Khoa Nguyen on 2/17/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Ánh xạ outlet
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var acceptBtn: UIButton!
    @IBOutlet weak var label: UILabel!
    
    // Ánh xạ action để xử lý sự kiện
    @IBAction func onAccepted(_ sender: Any) {
        let text:String = """
        Your email is: \(emailTextField.text!)
        Your name is: \(nameTextField.text!)
        """
        label.text = text
        label.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Bo góc cho button thông qua ánh xạ outlet
        acceptBtn.layer.cornerRadius = 5
        label.text = ""
    }


}

