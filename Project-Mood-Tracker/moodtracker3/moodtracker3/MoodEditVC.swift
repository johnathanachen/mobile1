//
//  MoodEditVC.swift
//  moodtracker3
//
//  Created by Johnathan Chen on 10/3/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

protocol moodEditDelegate: class {
    func editMood(mood: String)
}

class MoodEditVC: UIViewController {
    
    weak var delegate: moodEditDelegate?

    var moodEdit = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func happyEditButton(_ sender: UIButton) {
        moodEdit = "😄"
        delegate?.editMood(mood: moodEdit)
        navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func funnyEditButton(_ sender: UIButton) {
        moodEdit = "😂"
        delegate?.editMood(mood: moodEdit)
        navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func playfulEditButton(_ sender: UIButton) {
        moodEdit = "😛"
        delegate?.editMood(mood: moodEdit)
        navigationController?.popToRootViewController(animated: true)
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
