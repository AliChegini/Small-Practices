//
//  JSONParser.swift
//  CleanPractice
//
//  Created by Ehsan on 12/04/2020.
//  Copyright © 2020 Ali C. All rights reserved.
//

import Foundation


struct Genre: Decodable {
    var id: Int
    var name: String
}


struct AllGenres: Decodable {
    let genres: [Genre]
}


class JSONParser {
    private let downloader = JSONDownloader()
    
    let genresURL = "https://api.themoviedb.org/3/genre/movie/list?api_key=f0d4d14932ab901d6435839be5924d52&language=en-US"
    
    func parseGenres(completionHandler completion: @escaping (Result<AllGenres, MovieNightErrors>) -> Void) {
        downloader.downloadJSON(stringURL: genresURL) { (result) in
            
            switch result {
            case .success(let data):
                let decoder = JSONDecoder()
                
                do {
                    let genres = try decoder.decode(AllGenres.self, from: data)
                    completion(.success(genres))
                } catch {
                    completion(.failure(.couldNotParseJSON))
                }
                
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

}
