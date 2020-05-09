//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightValue.text = height + "m"
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightValue.text = weight + "kg"
    }
    
    @IBAction func calculatedPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / (height*height)
        print(bmi)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

