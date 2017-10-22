//
//  ViewController.swift
//  tipCalculator
//
//  Created by Johnathan Chen on 9/18/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        subtotalTextField.becomeFirstResponder()
        createToolbar()
    }
    
    // MARK: - Outlets
    @IBOutlet weak var subtotalTextField: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    // MARK: - Properties
    let model = Model()
    
    // MARK: - Interactions
    @IBAction func dragSlider(_ sender: UISlider) {
        tipPercentLabel.text = "Tip (\(Int(sender.value))%):"
        
        model.tipPercentFromSlider = Int(sender.value)
        updateLabels()
        tipPercentSlider.isEnabled = false
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        tipPercentSlider.isEnabled = false
    }
    
    // MARK: - Functions
    func createToolbar() {
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.sizeToFit()
        
        // create barbuttonitems
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissKeyboard))
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        
        // add items to toolbar
        toolbar.setItems([flexibleSpace, doneButton], animated: true)
        
        // add toolbar to keyboard
        subtotalTextField.inputAccessoryView = toolbar
    }
    
    @objc func dismissKeyboard() {
        subtotalTextField.resignFirstResponder()
        tipPercentSlider.isEnabled = true
        
        if subtotalTextField.text?.characters.count == 0 {
            subtotalTextField.text = "$0.00"
            model.subtotalFromTextField = "0.00"
            updateLabels()
            
        } else {
            model.subtotalFromTextField = subtotalTextField.text!
            model.tipPercentFromSlider = Int(tipPercentSlider.value)
           
            updateLabels()
        }

    }
    
    func updateLabels() {
        subtotalTextField.text = model.subtotalAsCurrency
        tipAmountLabel.text = model.tipAmountAsCurrency
        totalAmountLabel.text = model.totalAmountAsCurrency
    }


}




















