//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Ajay Bandi on 9/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PrevButton: UIButton!
    
    @IBOutlet weak var NextButton: UIButton!
    
    @IBOutlet weak var ImageDisplay: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var crsSem: UILabel!
    
    
    let courses = [["44555", "Network Security", "fall"],
                   ["44643/4443", "Mobile Edge", "spring"],
                   ["44689", "Data Streaming", "summer"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //previous button should be disabled
        //first element and its details of an array should be displayed
        
        PrevButton.isEnabled = false
        
    }
    
    
    @IBAction func PreviousButtonPressed(_ sender: UIButton) {
        //previous button should be disabled if the user iiterated all the images.
        //Display images in the reverse direction.
    }
    
    
    @IBAction func NextButtonPressed(_ sender: UIButton) {
        //previous button should be enabled
        //the next element in an array must be displayed
        //if the user reaches the end of array, the next button should be disabled.
    }
    

}

