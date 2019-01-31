//
//  ViewController.swift
//  Networking
//
//  Created by Ehsan on 31/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    let parser = JSONParser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parser.parsePerson { person, error in
            print(person)
        }
        
    }


}

