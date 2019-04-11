//
//  ViewController.swift
//  assignment6_in_class
//
//  Created by Jordan.Morgan2 on 4/11/19.
//  Copyright © 2019 Jordan.Morgan2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOfReps :Int = 0
    
    
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var sentence: UITextField!
    @IBOutlet weak var chalkboard: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func executeButtonPressed(_ sender: Any) {
        chalkboard.text = ""
        if(sentence.text != ""){//check if sentence field has a value
            if(numberOfReps > 0){//check if we have a number of reps that is 1 or more
                for i in 0...(numberOfReps-1){
                    chalkboard.text += sentence.text!
                    chalkboard.text += "\n"
                }
                numberOfReps = 0
                stepper.value = 0
                stepperLabel.text = "0"
            }
        }
    }
    
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberOfReps = Int(stepper.value)
        stepperLabel.text = "\(numberOfReps)"
    }
    
}

