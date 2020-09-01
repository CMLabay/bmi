//
//  calculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Christina Labay on 9/1/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    mutating func calcBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color:#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You good!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color:#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getBMIValue() -> String {
        let bmiFormat = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiFormat
    }
}
