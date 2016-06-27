//
//  CustomClassTableViewCell.swift
//  AlphaCampAppExercise
//
//  Created by 張智涵 on 2016/6/27.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit

class CustomClassTableViewCell: UITableViewCell {

    @IBOutlet weak var classLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
