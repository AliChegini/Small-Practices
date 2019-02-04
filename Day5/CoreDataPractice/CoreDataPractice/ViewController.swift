//
//  ViewController.swift
//  CoreDataPractice
//
//  Created by Ehsan on 02/02/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    let managedObjectContext = CoreDataStack().managedObjectContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func save(_ sender: UIButton) {
        guard let text = textField.text, !text.isEmpty else {
            return
        }
        
        if let item = NSEntityDescription.insertNewObject(forEntityName: "Item", into: managedObjectContext) as? Item {
            item.name = text
        }
        
        managedObjectContext.saveChanges()
        print("changes saved")
    }
    
    

}

