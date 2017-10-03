//
//  AddFriendViewController.swift
//  moodTracker2
//
//  Created by Johnathan Chen on 10/1/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

protocol addFriendDelegate: class {
    func addFriend(name: String)
}

class AddFriendViewController: UIViewController {
    
    weak var delegate: addFriendDelegate?
    lazy var inputName = addNameTextView.text
    
    @IBOutlet weak var addNameTextView: UITextField!
    @IBAction func tapDoneButton(_ sender: UIBarButtonItem) {
        self.delegate?.addFriend(name: inputName!)
        navigationController?.popToRootViewController(animated: true)
        print(self.delegate?.addFriend(name: inputName!))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNameTextView.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
