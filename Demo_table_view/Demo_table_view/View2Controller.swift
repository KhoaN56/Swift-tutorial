//
//  View2Controller.swift
//  Demo_table_view
//
//  Created by Khoa Nguyen on 2/19/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class View2Controller: UIViewController {
    
    var pictureName:String!

    @IBOutlet var img: UIImageView!
    @IBOutlet var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = UIImage(named: pictureName)!
        name.text = pictureName
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
