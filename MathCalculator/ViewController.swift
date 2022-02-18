//
//  ViewController.swift
//  MathCalculator
//
//  Created by Jeremy Wang on 2/17/22.
//

import UIKit

class ViewController: UIViewController {
    //Put the IBOutlets here
    
    @IBOutlet weak var NumberOne: UITextField!
    
    @IBOutlet weak var NumberTwo: UITextField!
        
    @IBOutlet weak var MathOperator: UITextField!
    
    @IBOutlet weak var DoubleSwitch: UISwitch!
    
    @IBOutlet weak var ResultMsg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ResultMsg.isHidden = true
        DoubleSwitch.isOn = false
        
    }


    @IBAction func Calculate(_ sender: UIButton) {
        //Get user inputs
        //The naming convention is determined by you and your organization.
        let numberOne = Double(NumberOne.text!)
        let numberTwo = Double(NumberTwo.text!)  //Use casting for data converstion.
        let mathOperator = MathOperator.text!
        
        //Declare the total variable and initialize it
        
        var total = 0.00
        
        switch mathOperator {
        case "+":
            total = numberOne! + numberTwo!
        case "-":
            total = numberOne! - numberTwo!
        case "*":
            total = numberOne! * numberTwo!
        case "/":
            total = numberOne! / numberTwo!
        default:
            ResultMsg.text = "Error! Please enter a valid math operator (+, - , * or /)"
        }
        
        ResultMsg.isHidden = false
        //Handle the double logic
        var doubleValue = 0.00
        if DoubleSwitch.isOn {
           doubleValue = total * 2
            ResultMsg.text = "The total is \(String(total))\n" + "The double value is \(String(doubleValue))"
        }else{
            ResultMsg.text = "The total is \(String(total))\n"
        }
        
        
    }
}

