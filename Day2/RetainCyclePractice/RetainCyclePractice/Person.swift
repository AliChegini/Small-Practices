//
//  Person.swift
//  RetainCyclePractice
//
//  Created by Ehsan on 29/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


class Person {
    let name: String
    var macbook: MacBook?
    
    init(name: String, macbook: MacBook?) {
        self.name = name
        self.macbook = macbook
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
    
    
}

