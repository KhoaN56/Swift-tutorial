//
//  RowControllerTableViewCell.swift
//  Demo_table_view
//
//  Created by Khoa Nguyen on 2/19/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit

class RowControllerTableViewCell: UITableViewCell {

    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var namelbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
