//
//  ViewController.swift
//  BullsEye
//
//  Created by Radoslaw Sobczak on 19/08/2020.
//  Copyright © 2020 Radoslaw Sobczak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
    }

    @IBAction func showAlert() {
       
        let message = "The value of the slider is now:\(currentValue)" + "\nThe target value is:\(targetValue)"
        let alert = UIAlertController(title: "Hallo Word!", message: message, preferredStyle: .alert) // 4 kroki do wytworzenia POP UP okienka
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
    
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        //print("The value of the slider is now:\(slider.value)")
        let roundedValue = slider.value.rounded()
        //print("The roundend value of the slider is now:\(roundedValue)")
        currentValue = Int(roundedValue)
    }
    
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
    }
}

