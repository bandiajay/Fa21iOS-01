//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by Ajay Bandi on 10/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let minx = ImageViewOutlet.frame.minX
        let miny = ImageViewOutlet.frame.minY
        print(minx,",",miny)
        
        let maxx = ImageViewOutlet.frame.maxX
        let maxy = ImageViewOutlet.frame.maxY
        
        print(maxx,",",maxy)
        
        let midx = ImageViewOutlet.frame.midX
        let midy = ImageViewOutlet.frame.midY
        print(midx, ",", midy)
        
        let w = ImageViewOutlet.frame.width
        print(w)
        let h = ImageViewOutlet.frame.height
        print(h)
        
        //change the location of the image view to the right bottom corner
        ImageViewOutlet.frame.origin.x = 314
        ImageViewOutlet.frame.origin.y = 796
        
        //change the location of the image to the center of the screen
        ImageViewOutlet.frame.origin.x = 157
        ImageViewOutlet.frame.origin.y = 398
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        //Increase the h and w of the image view and the location should be still at the center of the screen.
        
        var w = ImageViewOutlet.frame.width
        w = w + 100
        var h = ImageViewOutlet.frame.height
        h = h + 100
        
        let x = ImageViewOutlet.frame.origin.x-50
        let y = ImageViewOutlet.frame.origin.y-50
        
        let imageFrame =  CGRect(x:x, y:y, width:w, height:h)
        
        print(ImageViewOutlet.frame)
        
        //ImageViewOutlet.frame = imageFrame
        
        print(ImageViewOutlet.frame)
        
//        UIView.animate(withDuration: 1, delay: 1, animations: {
//            self.ImageViewOutlet.frame = imageFrame
//        })
        
        UIView.animate(withDuration: 1, delay: 1, usingSpringWithDamping: 1, initialSpringVelocity: 50,  animations: {
            self.ImageViewOutlet.frame = imageFrame
            self.ImageViewOutlet.alpha = 1
        })

//        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 50, animations:{
//            self.ImageViewOutlet.frame = imageFrame
            //self.ImageViewOutlet.alpha = 0.0
     //   })
        

        
    }
    
}

