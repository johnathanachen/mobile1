//
//  PresentableAlertView.swift
//  ProtocolPresentable
//
//  Created by Eliel A. Gordon on 10/3/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import Foundation
import UIKit

// TODO:
// Write protocol  to present alert view on any UIViewController
// Hint: You will need to constrain the protocol to UIViewController instances and use protocol extensions

protocol AlertDelegate {
    func presentAlert()
}

extension AlertDelegate where Self: UIViewController {
    func presentAlert() {
        let alertVC = UIAlertController(
            title: "Some Tittle",
            message: "Some message",
            preferredStyle: .alert
        )
        
        alertVC.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action) in }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    
}





