//
//  Movie.swift
//  Flix
//
//  Created by Anubhav Saxena on 2/13/18.
//  Copyright © 2018 Anubhav Saxena. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var posterUrl: URL?
    var backdropUrl: URL?
    var releaseDate: String
    var description: String
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        releaseDate = dictionary["release_date"] as? String ?? "No date"
        description = dictionary["overview"] as? String ?? "No description"
        if let posterPath = dictionary["poster_path"] as? String {
            let posterBaseUrl = "https://image.tmdb.org/t/p/w500"
            let posterUrl = URL(string: posterBaseUrl + posterPath)
            let backdropPathString = dictionary["backdrop_path"] as! String
            let backdropURL = URL(string: posterBaseUrl + backdropPathString)!
        }

        
        // Set the rest of the properties
    }
}
