//
//  ViewController.swift
//  TableViewDemos
//
//  Created by Ajay Bandi on 11/2/21.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init(prodName: String, prodCategory: String){
        self.productName = prodName
        self.productCategory = prodCategory
    }
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //returns an int that shows number of rows
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //returns a cell
        //Create a cell with a cell name and the index path
        var cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //Assign the data into the cell
        cell.textLabel?.text = productArray[indexPath.row].productName
        return cell
    }
    

    @IBOutlet weak var TableViewOutlet: UITableView!
    
    var productArray = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Assign the number of rows
        TableViewOutlet.delegate = self
        //Assign the datasource
        TableViewOutlet.dataSource = self
        
        let p1 = Product(prodName: "MacBookAir", prodCategory: "Laptop")
        productArray.append(p1)
        
        let p2 = Product(prodName: "iPhone", prodCategory: "cell phone")
        productArray.append(p2)
        
        let p3 = Product(prodName: "iPad", prodCategory: "Tablet")
        productArray.append(p3)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "AppleProductDescription"{
            let destination = segue.destination as!  ResultViewController
            
            //Assigning product to the destination
            destination.product = productArray[(TableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }


}

