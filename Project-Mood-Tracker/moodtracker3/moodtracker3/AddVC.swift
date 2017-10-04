//
//  addVC.swift
//  moodtracker3
//
//  Created by Johnathan Chen on 10/3/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

protocol addDelegate: class {
    func addFriend(name: String)
    func addMood(mood: String)
}

class AddVC: UIViewController {

    weak var delegate: addDelegate?
    
    var mood = ""
    
    // MARK: - Outlets
    @IBOutlet weak var inputName: UITextField!
    
    // MARK: - Actions
    @IBAction func happy(_ sender: UIButton) {
        mood = "😄"
        sender.isSelected = !sender.isSelected
    }

    @IBAction func funny(_ sender: UIButton) {
        mood = "😂"
        sender.isSelected = !sender.isSelected
    }
    @IBAction func playful(_ sender: UIButton) {
        mood = "😛"
        sender.isSelected = !sender.isSelected
    }

    
    @IBAction func addFriendButton(_ sender: UIButton) {
        delegate?.addFriend(name: inputName.text!)
        delegate?.addMood(mood: mood)
        navigationController?.popToRootViewController(animated: true)
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
