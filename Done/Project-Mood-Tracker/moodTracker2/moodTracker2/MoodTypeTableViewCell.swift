//
//  MoodTypeTableViewCell.swift
//  moodTracker2
//
//  Created by Johnathan Chen on 9/29/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

enum moodSelect: String {
    case happy = "😁"
    case medium = "😑"
    case bad = "😡"
}

class MoodTypeTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var moodTypeCell: UITextField!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
