//
//  ViewController.swift
//  Demo_Slider
//
//  Created by Khoa Nguyen on 2/18/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var value: UILabel!
    
    @IBAction func onChangeValue(_ sender: UISlider) {
        value.text = "\(sender.value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.maximumValue = 20
        slider.minimumValue = 5
        slider.value = 6
        slider.minimumTrackTintColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        slider.maximumTrackTintColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        slider.thumbTintColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        value.text = "\(slider.value)"
    }


}

