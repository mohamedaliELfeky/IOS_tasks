//
//  FoodViewClass.swift
//  FoodProject
//
//  Created by mohamed on 4/14/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import UIKit

class FoodViewClass: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var MyImage: UIImageView!
    @IBOutlet weak var MyLable: UILabel!
}
