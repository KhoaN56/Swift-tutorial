//
//  ViewController.swift
//  Demo_change_background_color
//
//  Created by Khoa Nguyen on 2/18/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Ánh xạ outlet
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // Ánh xạ action
    // Ánh xạ 3 slider action trong cùng một function
    @IBAction func onSliderChanged(_ sender: Any) {
        // Đổi màu nền ứng dụng
        // Các giá trị sử dụng trong tham biến đều giới hạn từ 0.0 - 1.0
        view.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value),/*alpha là độ trong suốt(opacity)*/ alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

