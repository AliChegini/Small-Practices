//
//  CoreDataStack.swift
//  CoreDataPractice
//
//  Created by Ehsan on 02/02/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import CoreData


class CoreDataStack {
    
    lazy var persistentContainer: NSPersistentContainer = {
       let container = NSPersistentContainer(name: "CoreDataPractice")
        container.loadPersistentStores { storeDescription, error in
            if let error = error {
                print(error)
            }
        }
        return container
        
    }()
    
    lazy var managedObjectContext: NSManagedObjectContext = {
       let container = persistentContainer
        return container.viewContext
    }()
    
    
}



extension NSManagedObjectContext {
    func saveChanges() {
        if self.hasChanges {
            do {
                try save()
            } catch {
                fatalError("Error: \(error.localizedDescription)")
            }
        }
    }
}


