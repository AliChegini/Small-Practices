//
//  MacBook.swift
//  RetainCyclePractice
//
//  Created by Ehsan on 29/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


class MacBook {
    let name: String
    // making owner weak to avoid retain cycle
    weak var owner: Person?
    
    init(name: String, owner: Person?) {
        self.name = name
        self.owner = owner
    }
    
    
    deinit {
        print("MacBook name \(name) is being deinitialized")
    }
    
}


