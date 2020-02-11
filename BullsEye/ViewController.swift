//
//  ViewController.swift
//  BullsEye
//
//  Created by Thossakrai Nakkasem on 11/2/20.
//  Copyright © 2020 Thossakrai Nakkasem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello!", message: "This is my first app"
            , preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }


}

