//
//  ViewController.swift
//  Demo_queue
//
//  Created by Khoa Nguyen on 2/19/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let link:String = "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg"

    // Ánh xạ outlet
    @IBOutlet var outletBtn: UIButton!
    @IBOutlet var imgView: UIImageView!
    
    //Ánh xạ action
    @IBAction func onLoadBtnClicked(_ sender: Any) {
        let url = URL(string: link)
        let queue:DispatchQueue = DispatchQueue(label: "download")
        queue.async {
            do{
                let data = try Data(contentsOf: url!)
                DispatchQueue.main.sync {
                     self.loadImage(data: data)
                }
            }catch{
                print(error)
            }
        }
    }
    
    func loadImage(data: Data){
        imgView.image = UIImage(data: data)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

