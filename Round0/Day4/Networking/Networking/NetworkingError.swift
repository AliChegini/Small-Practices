//
//  NetworkingError.swift
//  Networking
//
//  Created by Ehsan on 31/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


enum NetworkingError: Error {
    case couldNotConstructUrl
    case requestFailed
    case unsuccessfulResponse
    case couldNotParseJSON
}


