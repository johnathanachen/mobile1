//
//  MoodTypeTableViewCell.swift
//  MoodTracker
//
//  Created by Johnathan Chen on 9/29/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class MoodTypeTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var moodType: UITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
