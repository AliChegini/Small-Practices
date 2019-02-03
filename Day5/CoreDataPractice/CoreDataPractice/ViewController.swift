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
        if let text = textField.text {
            
        }
    }
    
    

}

