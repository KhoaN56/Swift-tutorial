//
//  ViewController.swift
//  Demo_Action_Sheet
//
//  Created by Khoa Nguyen on 2/18/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        // Tạo UIAlertController, preferredStyle = .actionSheet
        let action:UIAlertController = UIAlertController(title: "Alert", message: "This is a notification", preferredStyle: UIAlertController.Style.actionSheet)
        // Thêm nút ok
        let okBtn:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive, handler: nil)
        // Thêm nút cancel
        let cancelBtn:UIAlertAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
        action.addAction(okBtn)
        action.addAction(cancelBtn)
        present(action, animated: true, completion: nil)
    }

}

