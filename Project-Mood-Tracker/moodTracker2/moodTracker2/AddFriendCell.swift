//
//  AddFriendCell.swift
//  moodTracker2
//
//  Created by Johnathan Chen on 10/1/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class AddFriendCell: UITableViewCell {

    @IBOutlet weak var addNameTextView: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addNameTextView.becomeFirstResponder()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
