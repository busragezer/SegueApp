//
//  ViewController.swift
//  SegueApp
//
//  Created by Büşra Gezer on 7.06.2023.
//

import UIKit

class ViewController: UIViewController {
    var userName = ""
    
    @IBOutlet weak var FirstViewController: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Lifecycle
        print("viewDidLoad Function called")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear Function called")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear Function called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear Function called")
        nameText.text = ""
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear Function called")
    }
    
    
    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            //as -- casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

