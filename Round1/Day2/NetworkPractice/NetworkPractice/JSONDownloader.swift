//
//  JSONDownloader.swift
//  NetworkPractice
//
//  Created by Ehsan on 16/03/2019.
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
    
    
    func downloadJSON(url: String, completionHandler completion: @escaping (Data?, NetworkingErrors?) -> Void) {
        guard let url = URL(string: url) else {
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


