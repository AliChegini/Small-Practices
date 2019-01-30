//
//  ViewController.swift
//  RetainCyclePractice
//
//  Created by Ehsan on 29/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ali: Person?
    var macbook: MacBook?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createObjects()
        assignProperties()
    }
    
    
    func createObjects() {
        ali = Person(name: "ali", macbook: nil)
        macbook = MacBook(name: "macbook", owner: nil)
    }
    
    // function to assign properties and create retain cycle
    func assignProperties() {
        ali?.macbook = macbook
        macbook?.owner = ali
        
        // after making owner in MacBook weak ali will get released form memory
        // and deinit will be called
        ali = nil
    }


}

