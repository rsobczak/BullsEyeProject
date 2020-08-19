//
//  ViewController.swift
//  BullsEye
//
//  Created by Radoslaw Sobczak on 19/08/2020.
//  Copyright © 2020 Radoslaw Sobczak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
       
        let alert = UIAlertController(title: "Hallo Word!", message: "This is my first app", preferredStyle: .alert) // 4 kroki do wytworzenia POP UP okienka
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}

