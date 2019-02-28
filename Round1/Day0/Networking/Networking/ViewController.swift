//
//  ViewController.swift
//  Networking
//
//  Created by Ehsan on 28/02/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let parser = JSONParser()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parser.parseStarship { (starship, error) in
            if let starship = starship {
                print(starship)
            }
        }
        
        
    }


}

