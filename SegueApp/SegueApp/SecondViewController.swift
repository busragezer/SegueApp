//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Büşra Gezer on 7.06.2023.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var SecondViewController: UILabel!
    @IBOutlet weak var nameLabel: UITextField!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = myName

    }
    

  

}
