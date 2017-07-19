//
//  HabitTableViewCell.swift
//  habittrack
//
//  Created by Ben Gibson on 7/8/17.
//  Copyright © 2017 Wabi Sabi. All rights reserved.
//

import UIKit

class HabitTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var goalLabel: UILabel!
    



    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
