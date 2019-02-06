//
//  JSONDownloader.swift
//  Networking
//
//  Created by Ehsan on 06/02/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation

class JSONDownloader {
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    
    func jsonDownloader(stringURL: String, completionHandler completion: @escaping (Data?, NetworkingErrors?) -> Void) {
        guard let url = URL(string: stringURL) else {
            completion(nil, NetworkingErrors.couldNotConstructURL)
            return
        }
        
        let request = URLRequest(url: url)
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, NetworkingErrors.requestFailed)
                return
            }
            
            if httpResponse.statusCode == 200 {
                completion(data, nil)
            } else {
                completion(nil, NetworkingErrors.responseUnsuccessful)
            }
        }
        
        dataTask.resume()
    }
    
    
}




