//
//  RowViewController.swift
//  Demo_api_proccessing
//
//  Created by Khoa Nguyen on 2/20/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class RowViewController: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overViewLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
