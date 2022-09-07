//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Adrien CHABAUD on 2022-09-07.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue: Float?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue ?? 0.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmiValue = weight / pow(height, 2)
    }
}
