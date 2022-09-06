//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        // Get height and weight values
        let height = heightSlider.value
        let weight = weightSlider.value
        
        // Calculate BMI
        let bmi = weight / pow(height, 2)
        
        // Create secondView object
        let secondVC = SecondViewController()
        // Assign bmiValue the value we calculated
        secondVC.bmiValue = String(format: "%.1f", bmi)
        
        // Change to the second view activity
        self.present(secondVC, animated: true, completion: nil)
    }
    
}

