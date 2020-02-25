//
//  ViewController.swift
//  Demo_timer
//
//  Created by Khoa Nguyen on 2/18/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer:Timer!
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Cách 1
//        Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { (abc) in
//            print("Hello")
//        }
        // Cách 2 có target
//        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(chay), userInfo: nil, repeats: true)
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(chay), userInfo: nil, repeats: true)
    }
    @objc func chay(){
        i += 1
        if(i == 5){
            // Cho timer dừng lại
            timer.invalidate()
            // Huỷ vùng nhớ của timer
            timer = nil
        }
        print("hello")
    }
    
    
}

