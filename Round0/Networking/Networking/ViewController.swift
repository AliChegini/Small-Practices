//
//  ViewController.swift
//  Networking
//
//  Created by Ehsan on 27/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    let parser = JSONParser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        parser.parsePerson { person, error in
            if let error = error {
                print(error)
            }
            
            if let person = person {
                print(person)
            }
        }
    }


}

