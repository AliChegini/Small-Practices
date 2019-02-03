//
//  Item+CoreDataProperties.swift
//  CoreDataPractice
//
//  Created by Ehsan on 02/02/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var name: String?

}
