//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Ajay Bandi on 11/29/21.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = courses![indexPath.row].courseTitle
        
        return cell
    }
    

    @IBOutlet weak var CourseTableViewOutlet: UITableView!
    
    @IBOutlet weak var courseNum: UITextField!
    
    @IBOutlet weak var courseTitle: UITextField!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var courses: [Course]? = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CourseTableViewOutlet.delegate = self
        CourseTableViewOutlet.dataSource = self
        
        retreiveCourses();
        
    }
    
    func retreiveCourses(){
        do{
        self.courses = try context.fetch(Course.fetchRequest())
        }catch{
            print("No data is retreived")
        }
        //reload the table
        CourseTableViewOutlet.reloadData()
    }
    
    

    @IBAction func addNewCourse(_ sender: Any) {
        //Plus button
        let newCourse = Course(context: self.context)
        newCourse.courseID = courseNum.text
        newCourse.courseTitle = courseTitle.text
        //save the data to the core data
        
        do{
            try self.context.save()
            
        }
        catch{
            print("Cannot add a course!")
        }
        self.retreiveCourses()
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .destructive, title: "Delete Course") { (action, view, completion) in
          
        
        let courseToBeDeleted = self.courses![indexPath.row]
        self.context.delete(courseToBeDeleted)
        do{
            try self.context.save()
            
        }
        catch{
            print("Cannot add a course!")
        }
        self.retreiveCourses()
            
        }
        
        return UISwipeActionsConfiguration(actions: [action])
        
    }
    
}

