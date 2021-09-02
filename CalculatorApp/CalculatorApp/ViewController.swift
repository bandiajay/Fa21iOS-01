//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Ajay Bandi on 9/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var calcOperator:Character = " "

    @IBOutlet weak var DisplayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Button3(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "3"
        if operand1 == -1.1{
            operand1 = 3
        }
        else{
            operand2 = 3
        }
    }
    
    @IBAction func Button6(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "6"
        if operand2 == -1.1{
            operand2 = 6
        }
        else{
            operand1 = 6
        }
    }
    
    @IBAction func ButtonPlus(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "+"
        if calcOperator == " "{
            calcOperator = "+"
        }
    }
    
    @IBAction func ButtonEquals(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "="
        if calcOperator == "+"{
            DisplayLabel.text = "\(operand2+operand1)";
        }
        
    }
    

}

