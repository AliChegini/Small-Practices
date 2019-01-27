//
//  JSONDownloader.swift
//  Networking
//
//  Created by Ehsan on 27/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation

// documentation
// http://swapi.co/documentation

// example API calls
// http://swapi.co/api/people/1/
// http://swapi.co/api/films/1/
// http://swapi.co/api/starships/9/


class JSONDownloader {
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    
    let stringURL = "http://swapi.co/api/people/1/"
    
    func jsonDownloader(request: URLRequest, completionHandler completion: @escaping (Data?, NetworkingErrors?) -> Void) {
        
        guard let url = URL(string: stringURL) else {
            completion(nil, NetworkingErrors.couldNotConstructUrl)
            return
        }
        let request = URLRequest(url: url)
        
        let dataTask = session.dataTask(with: request) { data, response, error in
            
            if let error = error as? URLError {
                switch error.code {
                case .notConnectedToInternet:
                    completion(nil, NetworkingErrors.notConnectedToInternet)
                case .networkConnectionLost:
                    completion(nil, NetworkingErrors.networkConnectionLost)
                default:
                    break
                }
            }
                
                
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, NetworkingErrors.requestFailed)
                return
            }
            
            if httpResponse.statusCode == 200 {
                if let data = data {
                    completion(data, nil)
                }
            } else {
                completion(nil, NetworkingErrors.responseUnsuccessfull)
            }
        }
        
        dataTask.resume()
        
    }
    
    
    
}

