//
//  Course+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Ajay Bandi on 11/29/21.
//
//

import Foundation
import CoreData


extension Course {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Course> {
        return NSFetchRequest<Course>(entityName: "Course")
    }

    @NSManaged public var courseID: String?
    @NSManaged public var courseTitle: String?

}

extension Course : Identifiable {

}
