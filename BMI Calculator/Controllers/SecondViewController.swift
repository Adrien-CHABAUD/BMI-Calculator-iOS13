//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Adrien CHABAUD on 2022-09-06.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Change the color of the background
        view.backgroundColor = .red
        
        // Programmatically create a label
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
