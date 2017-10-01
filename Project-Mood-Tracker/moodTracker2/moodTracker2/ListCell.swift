//
//  ListCell.swift
//  moodTracker2
//
//  Created by Johnathan Chen on 10/1/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var listCellView: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
