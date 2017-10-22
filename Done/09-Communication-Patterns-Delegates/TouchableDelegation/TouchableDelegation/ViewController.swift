//
//  ViewController.swift
//  TouchableDelegation
//
//  Created by Eliel A. Gordon on 10/5/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController, tapDelegate {
    @IBOutlet weak var touchableView: TouchbleView!
    
    
    func tappedButton() {
        
        print("This is coming from the delegate")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        touchableView.delegate = self
    }
    
    
}

