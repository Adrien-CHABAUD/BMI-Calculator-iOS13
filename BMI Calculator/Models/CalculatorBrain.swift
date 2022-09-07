//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Adrien CHABAUD on 2022-09-07.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor(red: 0.33, green: 0.92, blue: 0.94, alpha: 1.0))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor(red: 0.01, green: 0.94, blue: 0.35, alpha: 1.0))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor(red: 0.61, green: 0.04, blue: 0.09, alpha: 1.0))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? " "
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
