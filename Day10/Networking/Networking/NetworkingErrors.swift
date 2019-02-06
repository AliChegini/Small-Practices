//
//  NetworkingErrors.swift
//  Networking
//
//  Created by Ehsan on 06/02/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


enum NetworkingErrors: Error {
    case couldNotConstructURL
    case requestFailed
    case responseUnsuccessful
}
