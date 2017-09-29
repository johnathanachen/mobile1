//
//  FriendViewController.swift
//  MoodTracker
//
//  Created by Johnathan Chen on 9/28/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class FriendViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }

    // MARK: - Outlets
    @IBOutlet weak var textView: UITextField!
    
    // MARK: - Interactions
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        if textView.text!.characters.count > 0 {
            model.friends.append(textView.text!)
            model.moods.append(textView.text!)
        }
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
