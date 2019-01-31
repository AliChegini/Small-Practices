//
//  JSONDownloader.swift
//  Networking
//
//  Created by Ehsan on 31/01/2019.
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
    
    
    func jsonDownloader(stringURL: String, completionHandler completion: @escaping (Data?, NetworkingError?) -> Void) {
        
        guard let url = URL(string: stringURL) else {
            completion(nil, NetworkingError.couldNotConstructUrl)
            return
        }
        let request = URLRequest(url: url)
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, NetworkingError.requestFailed)
                return
            }
            
            if httpResponse.statusCode == 200 {
                completion(data, nil)
            } else {
                completion(nil, NetworkingError.unsuccessfulResponse)
            }
            
        }
        
        dataTask.resume()
        
    }
    
    
    
}



