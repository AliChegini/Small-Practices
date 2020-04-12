//
//  AppModels.swift
//  CleanPractice
//
//  Created by Ehsan on 12/04/2020.
//  Copyright © 2020 Ali C. All rights reserved.
//

import Foundation


enum MovieNightErrors: Error {
    case couldNotConstructURL
    case requestFailed
    case responseUnsuccessful
    case couldNotParseJSON
}
