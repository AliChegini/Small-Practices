//
//  ListGenresModels.swift
//  CleanPractice
//
//  Created by Ehsan on 12/04/2020.
//  Copyright (c) 2020 Ali C. All rights reserved.
//
//  This file was generated by Ali Chegini.
//  This is a simplified version of the Clean Swift Xcode Templates so
//  one can apply clean architecture to iOS and Mac projects.
//  For more info visit: http://clean-swift.com
//

import UIKit

enum ListGenresModels {
    
    struct Request {
        
    }
    
    struct Response {
        let genres: AllGenres
    }
    
    struct ViewModel {
        let genres: AllGenres
    }
}
