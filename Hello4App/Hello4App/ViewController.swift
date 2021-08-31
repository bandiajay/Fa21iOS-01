//
//  ViewController.swift
//  Hello4App
//
//  Created by Ajay Bandi on 8/31/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InpuTText: UITextField!
    
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SubmitButton(_ sender: Any) {
        //read the text from the text field
        var ipText = InpuTText.text!
        //Assign it to display label
        DisplayLabel.text = "Hello, \(ipText)!";
        
    }
}

