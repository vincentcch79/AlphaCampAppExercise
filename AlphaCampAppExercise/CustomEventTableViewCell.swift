//
//  CustomEventTableViewCell.swift
//  AlphaCampAppExercise
//
//  Created by 張智涵 on 2016/6/26.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit

class CustomEventTableViewCell: UITableViewCell {
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventDate: UILabel!
    @IBOutlet weak var eventDescription: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
