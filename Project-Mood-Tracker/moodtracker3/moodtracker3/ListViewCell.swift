//
//  ListViewCell.swift
//  moodtracker3
//
//  Created by Johnathan Chen on 10/3/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class ListViewCell: UITableViewCell {


    @IBOutlet weak var moodLabelView: UILabel!
    @IBOutlet weak var nameLabelView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
