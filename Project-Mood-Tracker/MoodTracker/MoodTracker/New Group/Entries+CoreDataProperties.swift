//
//  Entries+CoreDataProperties.swift
//  MoodTracker
//
//  Created by Johnathan Chen on 9/28/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//
//

import Foundation
import CoreData


extension Entries {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entries> {
        return NSFetchRequest<Entries>(entityName: "Entries")
    }

    @NSManaged public var image: NSData?
    @NSManaged public var name: String?
    @NSManaged public var mood: String?

}
