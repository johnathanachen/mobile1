//
//  addVC.swift
//  moodtracker3
//
//  Created by Johnathan Chen on 10/3/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class AddVC: UIViewController {

    var mood = ""
    
    // MARK: - Outlets
    @IBOutlet weak var inputName: UITextField!
    
    // MARK: - Actions
    @IBAction func happy(_ sender: UIButton) {
        var mood = "😄"
    }
    @IBAction func funny(_ sender: UIButton) {
        var mood = "😂"
    }
    @IBAction func playful(_ sender: UIButton) {
        var mood = "😛"
    }
    

    
    @IBAction func addFriendButton(_ sender: UIButton) {
        var newName = inputName.text!
        model.moods.append(newName)
        model.names.append(mood)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
