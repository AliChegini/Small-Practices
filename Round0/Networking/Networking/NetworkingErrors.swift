//
//  NetworkingErrors.swift
//  Networking
//
//  Created by Ehsan on 27/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation

enum NetworkingErrors: Error {
    case invalidUrl
    case couldNotConstructUrl
    case notConnectedToInternet
    case networkConnectionLost
    case requestFailed
    case responseUnsuccessfull
    case couldNotParseJSON
}



