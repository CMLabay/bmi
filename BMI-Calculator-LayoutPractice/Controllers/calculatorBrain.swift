//
//  calculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Christina Labay on 9/1/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float = 0.0
    mutating func calcBMI(height: Float, weight: Float) -> Void{
        bmi = weight / (height*height)
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi)
    }
}
