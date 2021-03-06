//
//  ViewController.swift
//  RandomPunGenerator
//
//  Created by Johnathan Chen on 10/21/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class ViewController: UIViewController, punDelegate {

    // MARK: - Outlet
    @IBOutlet weak var pun_image: UIImageView!

    let images = [UIImage(named: "00"),UIImage(named: "02"),UIImage(named: "03"),UIImage(named: "04"),UIImage(named: "05"),UIImage(named: "06"),UIImage(named: "07")]
    
    var selectedImage = "07"
    
    func sendNewImage(image: String) {
        selectedImage = image
        pun_image.image = UIImage(named: selectedImage)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedImage)
        sendNewImage(image: selectedImage)

    }
    
    // MARK: - Actions
    @IBAction func new_pun_button(_ sender: UIButton) {
        let randomIndex = Int(arc4random_uniform(UInt32(images.count)))
        pun_image.image = images[randomIndex]
    }
    

  
    
   

}

