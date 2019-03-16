//
//  JSONParser.swift
//  NetworkPractice
//
//  Created by Ehsan on 16/03/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


struct Starship: Decodable {
    let name: String
    let model: String
    let films: [String]
}

class JSONParser {
    let downloader = JSONDownloader()
    let stringURL = "https://swapi.co/api/starships/9/"
    
    func parseStarship(completionHandler completion: @escaping (Starship?, NetworkingErrors?) -> Void) {
        downloader.downloadJSON(url: stringURL) { (data, error) in
            if let data = data {
                
                let decoder = JSONDecoder()
                
                do {
                    let starship = try decoder.decode(Starship.self, from: data)
                    completion(starship, nil)
                } catch {
                    completion(nil, NetworkingErrors.couldNotParseJSON)
                }
            }
        }
    }
    
}
