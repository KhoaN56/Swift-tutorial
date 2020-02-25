//
//  ViewController.swift
//  Demo_table_view
//
//  Created by Khoa Nguyen on 2/19/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    let picturesName:[String] = [
        "Bahamas Aerial",
        "Blue Pond",
        "Death Valley",
        "Desert",
        "Earth and Moon",
        "Earth Horizon",
        "Elephant",
        "Floating Ice",
        "Foggy Forest",
        "Foxtail Barley",
        "Lake",
    ]
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let screen2 = storyBoard.instantiateViewController(withIdentifier: "screen2") as! View2Controller
//        screen2.img.image = UIImage(named: picturesName[indexPath.row])
        screen2.pictureName = picturesName[indexPath.row]
        self.navigationController?.pushViewController(screen2, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picturesName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "row") as! RowControllerTableViewCell
        cell.imgView.image = UIImage(named: picturesName[indexPath.row])
        cell.namelbl.text = picturesName[indexPath.row]
        return cell
    }
    
}

