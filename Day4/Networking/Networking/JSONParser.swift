//
//  JSONParser.swift
//  Networking
//
//  Created by Ehsan on 31/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


struct Person: Decodable {
    let name: String
    let height: String
    let films: [String]
}


class JSONParser {
    let downloader = JSONDownloader()
    
    
    func parsePerson(completionHandler completion: @escaping (Person?, NetworkingError?) -> Void) {
        let stringURL = "http://swapi.co/api/people/1/"
        
        downloader.jsonDownloader(stringURL: stringURL) { data, error in
            if let error = error {
                completion(nil, error)
            }
            
            if let data = data {
                let decoder = JSONDecoder()
                
                if let person = try? decoder.decode(Person.self, from: data) {
                    completion(person, nil)
                } else {
                    completion(nil, NetworkingError.couldNotParseJSON)
                }
                
            }
            
            
        }
        
        
        
    }
    
    
    
    
    
}


