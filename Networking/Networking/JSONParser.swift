//
//  JSONParser.swift
//  Networking
//
//  Created by Ehsan on 27/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


struct Person: Decodable {
    let name: String
    let height: String
    let gender: String
    let url: String
    let films: [String]
}



class JSONParser {
    let downloader = JSONDownloader()

    func parsePerson(completionHandler completion: @escaping (Person?, NetworkingErrors?) -> Void) {
        
        guard let url = URL(string: downloader.stringURL) else {
            completion(nil, NetworkingErrors.couldNotConstructUrl)
            return
        }
        let request = URLRequest(url: url)
        
        let decoder = JSONDecoder()
        downloader.jsonDownloader(request: request) { (data, error) in
            if let data = data {
                if let person = try? decoder.decode(Person.self, from: data) {
                    completion(person, nil)
                } else {
                    completion(nil, NetworkingErrors.couldNotParseJSON)
                }
            }
        }
        
    }

    
}

